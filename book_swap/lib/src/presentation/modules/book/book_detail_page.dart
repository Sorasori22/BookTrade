import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/book/providers/book_delete_provider.dart';
import 'package:book_swap/src/features/book/providers/book_detail_provider.dart';
import 'package:book_swap/src/features/book/providers/book_detail_provider.widget.dart';
import 'package:book_swap/src/features/trade_request/providers/requested_book_ids_list_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_delete_provider.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_cover.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/components/label_text.dart';
import 'package:book_swap/src/presentation/widgets/feedback/app_snackbar.dart';
import 'package:dartx/dartx_io.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

import '../../../core/account/account.dart' show currentProfileIdProvider;
import '../../../features/book/book_schema.schema.dart';
import '../../app/app_style.dart';
import '../../widgets/dialogs/app_dialog.dart';

@RoutePage()
class BookDetailPage extends ConsumerWidget {
  const BookDetailPage({super.key, @PathParam('bookId') required this.bookIdString});

  final String bookIdString;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookId = BookId.fromValue(bookIdString.toInt());
    final currentProfileId = ref.watch(currentProfileIdProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text('Book Detail'),
        actions: [
          if (currentProfileId ==
              ref.watch(
                bookDetailProvider(bookId).select((state) => state.valueOrNull?.ownerId),
              )) ...[
            PopupMenuButton<String>(
              onSelected: (value) {
                if (value == 'edit') {
                  context.pushRoute(BookUpdateRoute(bookIdString: bookIdString));
                } else if (value == 'delete') {
                  AppDialog.showConfirmation(
                    context: context,
                    title: 'Delete Book',
                    message: 'Are you sure you want to delete this book?',
                    onConfirm: () async {
                      context.loadingWrapper(() async {
                        final result = await ref.read(bookDeleteProvider(bookId).notifier).call();
                        if (result.isSuccess && context.mounted) {
                          context.showSuccessSnackbar('Book deleted successfully');
                          context.maybePop();
                        }

                        if (result.isFailure && context.mounted) {
                          context.showErrorSnackbar(result.failure!.message());
                        }
                      });
                    },
                  );
                }
              },
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 'edit',
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(width: 8),
                      Text('Edit'),
                    ],
                  ),
                ),
                const PopupMenuItem(
                  value: 'delete',
                  child: Row(
                    children: [
                      Icon(Icons.delete),
                      SizedBox(width: 8),
                      Text('Delete'),
                    ],
                  ),
                ),
              ],
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ],
      ),
      body: BookDetailProviderScope(
        id: bookId,
        child: BookDetailStateWidget(
          builder: (context, ref, child) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(AS.sidePadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AS.hGap4,
                    Row(
                      children: [
                        SizedBox(
                          width: 120,
                          child: BookCover(cover: ref.select((state) => state.image)),
                        ),
                        AS.wGap16,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            LabelText(
                              label: 'Title',
                              text: ref.select((state) => state.title),
                              textStyle: TextStyle(fontSize: 18),
                            ),
                            AS.hGap4,
                            LabelText(
                              label: 'Author',
                              text: ref.select((state) => state.author),
                            ),
                            AS.hGap20,
                            LabelText(
                              label: 'Conditional',
                              text: ref.select((state) => state.condition.toString()),
                            ),
                            AS.hGap8,
                            LabelText(label: 'Rating', text: '4.11/5'),
                            if (currentProfileId != ref.select((state) => state.ownerId)) ...[
                              AS.hGap12,
                              Consumer(
                                builder: (context, ref, child) {
                                  final pendingRequest = ref.watch(
                                    prendingTradeRequestListProvider.select(
                                      (state) => state.valueOrNull
                                          ?.where((e) => e.bookId == bookId)
                                          .firstOrNull,
                                    ),
                                  );

                                  final requested = pendingRequest != null;

                                  return SizedBox(
                                    width: requested ? 150 : 90,
                                    child: AppButton(
                                      onPressed: () {
                                        if (requested) {
                                          AppDialog.showConfirmation(
                                            context: context,
                                            title: 'Cancel Request',
                                            message:
                                                'Are you sure you want to cancel this request?',
                                            onConfirm: () {
                                              context.loadingWrapper(() async {
                                                final result = await ref
                                                    .read(
                                                      tradeRequestDeleteProvider(
                                                        pendingRequest.id,
                                                      ).notifier,
                                                    )
                                                    .call();

                                                if (result.isSuccess && context.mounted) {
                                                  context.showSuccessSnackbar('Request cancelled');
                                                }

                                                if (result.isFailure && context.mounted) {
                                                  context
                                                      .showErrorSnackbar(result.failure!.message());
                                                }
                                              });
                                            },
                                          );
                                        } else {
                                          context.pushRoute(
                                            TradeRequestCreateRoute(bookId: bookId.value),
                                          );
                                        }
                                      },
                                      label: requested ? 'Cancel Request' : 'Swap',
                                      labelTextStyle: TextStyle(
                                        color: requested ? Colors.red : null,
                                      ),
                                      borderRadius: AS.radiusS,
                                      size: AppButtonSize.medium,
                                      variant: requested
                                          ? AppButtonVariant.neutral
                                          : AppButtonVariant.primary,
                                    ),
                                  );
                                },
                              ),
                            ],
                          ],
                        ),
                      ],
                    ),
                    AS.hGap20,
                    Text('Description:', style: Theme.of(context).textTheme.titleMedium),
                    AS.hGap8,
                    Text(ref.select((state) => state.description) ?? 'No description'),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

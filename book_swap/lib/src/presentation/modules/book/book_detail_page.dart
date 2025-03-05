import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/features/book/providers/book_detail_provider.dart';
import 'package:book_swap/src/features/book/providers/book_detail_provider.widget.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_cover.dart';
import 'package:book_swap/src/presentation/router/app_router.gr.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/components/label_text.dart';
import 'package:dartx/dartx_io.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/account/account.dart' show currentProfileIdProvider;
import '../../../features/book/book_schema.schema.dart';
import '../../app/app_style.dart';

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
              ref.watch(bookDetailProvider(bookId).select((state) => state.valueOrNull?.ownerId)))
            IconButton(
              onPressed: () {
                context.pushRoute(BookUpdateRoute(bookIdString: bookIdString));
              },
              icon: Icon(Icons.edit),
            ),
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
                    AS.hGap20,
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
                              SizedBox(
                                width: 90,
                                child: AppButton(
                                  onPressed: () {},
                                  label: 'Swap',
                                  borderRadius: AS.radiusS,
                                  size: AppButtonSize.medium,
                                ),
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

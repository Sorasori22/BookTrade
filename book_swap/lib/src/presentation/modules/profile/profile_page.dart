import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.widget.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/book/providers/my_book_list_provider.widget.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_cover.dart';
import 'package:book_swap/src/presentation/modules/profile/widget/current_user_avatar.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/layouts/app_card.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';
import '../../router/app_router.gr.dart';

@RoutePage()
class ProfileRootPage extends ConsumerWidget {
  const ProfileRootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const AutoRouter();
  }
}

@RoutePage()
class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          AS.wGap8,
          IconButton(
            onPressed: () {
              context.router.push(const MoreRoute());
            },
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: CurrentUserAvatar(size: 68),
            ),
            AS.hGap12,
            Align(
              alignment: Alignment.topCenter,
              child: CurrentAccountSelectWidget(
                selector: (state) => state.profile?.fullname ?? "...",
                builder: (context, ref, value) {
                  return Text(
                    value,
                    style: context.textTheme.bodyLarge,
                  );
                },
              ),
            ),
            AS.hGap12,
            Text(
              'My Books',
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            AS.hGap12,
            SizedBox(
              height: 200,
              child: MyBookListProviderScope(
                child: MyBookListStateWidget(
                  builder: (context, ref, child) {
                    final length = ref.select((e) => e.length);
                    if (length == 0) {
                      return DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(AS.radiusS),
                        padding: EdgeInsets.all(AS.paddingM),
                        dashPattern: [10, 4],
                        strokeWidth: 1,
                        color: context.colors.onSurface.withValues(alpha: 0.4),
                        child: Center(
                          child: Text(
                            'No books yet, add one!',
                            style: context.textTheme.bodyMedium?.copyWith(
                              color: context.colors.onSurface.withValues(alpha: 0.6),
                            ),
                          ),
                        ),
                      );
                    }

                    return ListView.builder(
                      itemCount: length,
                      itemBuilder: (context, index) {
                        return MyBookListSelectWidget(
                          selector: (state) => state.getOrNull(index),
                          builder: (context, ref, value) {
                            if (value == null) {
                              return const SizedBox.shrink();
                            }
                            return AppCard(
                              child: Column(
                                children: [
                                  BookCover(cover: value.image),
                                ],
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            AS.hGap12,
            AppButton(
              onPressed: () {
                context.pushRoute(BookCreateRoute());
              },
              label: 'Add Book',
              icon: Icons.add,
              fullWidth: true,
            ),
            AS.hGap12,
            Text(
              'Swap History',
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

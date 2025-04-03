import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/features/book/params/book_list_param.dart';
import 'package:book_swap/src/features/book/providers/book_list_pagination_provider.dart';
import 'package:book_swap/src/presentation/widgets/forms/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../app/app_style.dart';
import '../profile/widget/current_user_avatar.dart';
import 'widget/book_sliver_grid.dart';

@RoutePage()
class SearchPage extends HookConsumerWidget {
  const SearchPage({super.key, this.autoFocus = false});

  final bool autoFocus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = useState('');
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Happy Reading',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        centerTitle: false,
        actions: [
          SizedBox(
            width: 40,
            child: CurrentUserAvatar(),
          ),
          AS.wGap16,
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AS.sidePadding).copyWith(top: 4),
        child: Column(
          children: [
            SearchField(
              onChanged: (value) {
                searchState.value = value;
              },
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  ref.invalidate(bookListPaginationProvider);
                },
                child: CustomScrollView(
                  slivers: [
                    SliverPadding(
                      padding: const EdgeInsets.all(AS.sidePadding),
                      sliver: BookSliverGrid(
                        param: BookListParam(
                          // toHideOwnerId: ref.watch(currentProfileIdProvider),
                          titleSearch: searchState.value,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

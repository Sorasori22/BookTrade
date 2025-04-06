import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/features/book/params/book_list_param.dart';
import 'package:book_swap/src/features/book/providers/book_list_pagination_provider.dart';
import 'package:book_swap/src/presentation/widgets/forms/search_field.dart';
import 'package:easy_localization/easy_localization.dart';
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
          'search.title'.tr(),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AS.sidePadding).copyWith(bottom: 0),
            child: SearchField(
              onChanged: (value) {
                searchState.value = value;
              },
              placeholder: 'search.placeholder'.tr(),
              autofocus: autoFocus,
            ),
          ),
          AS.hGap8,
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
    );
  }
}

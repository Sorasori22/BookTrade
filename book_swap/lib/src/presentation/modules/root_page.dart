import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../router/app_router.gr.dart';

@RoutePage()
class RootPage extends ConsumerWidget {
  const RootPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CurrentAccountProviderScope(
      child: AutoTabsScaffold(
        routes: const [
          HomeRoute(),
          BookRoute(),
          MessageRoute(),
          ProfileRoute(),
        ],
        bottomNavigationBuilder: (context, tabsRouter) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(height: 0, thickness: 0.2),
              BottomNavigationBar(
                currentIndex: tabsRouter.activeIndex,
                type: BottomNavigationBarType.fixed,
                selectedFontSize: 12,
                onTap: tabsRouter.setActiveIndex,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home_outlined),
                    activeIcon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.menu_book_outlined),
                    activeIcon: Icon(Icons.menu_book),
                    label: 'Book',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.messenger_outline),
                    activeIcon: Icon(Icons.messenger),
                    label: 'Message',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person_2_outlined),
                    activeIcon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}

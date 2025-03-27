import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/account/current_account_provider.widget.dart';
import 'package:book_swap/src/features/banner/providers/banner_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_list_provider.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp_supabase_helper/supabase_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../core/account/account.dart';
import '../router/app_router.gr.dart';

@RoutePage()
class RootPage extends ConsumerStatefulWidget {
  const RootPage({super.key});

  @override
  ConsumerState<RootPage> createState() => _RootPageState();
}

class _RootPageState extends ConsumerState<RootPage> {
  RealtimeChannel? _tradeRequestChannel;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBanner();
      _listenTradeRequestRealtime();
    });
  }

  void _listenTradeRequestRealtime() {
    final sb = ref.read(supabaseProvider).client;
    _tradeRequestChannel = sb.channel('trade_requests');

    _tradeRequestChannel!
        .onPostgresChanges(
          event: PostgresChangeEvent.all,
          schema: 'public',
          table: TradeRequestTable.table,
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: TradeRequestTable.ownerId,
            value: ref.read(currentProfileIdProvider),
          ),
          callback: (payload) {
            ref.invalidate(tradeRequestListProvider);
          },
        )
        .subscribe();
  }

  Future<void> _showBanner() async {
    final banner = await ref.read(bannerProvider.future);
    if (banner == null) return;

    context.pushRoute(BannerRoute());
  }

  @override
  void dispose() {
    _tradeRequestChannel?.unsubscribe();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                    label: 'Browse',
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

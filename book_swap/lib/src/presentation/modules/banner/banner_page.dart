import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/features/banner/providers/banner_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../features/banner/banner_schema.schema.dart';

@RoutePage()
class BannerPage extends ConsumerStatefulWidget {
  const BannerPage({super.key});

  @override
  ConsumerState<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends ConsumerState<BannerPage> {
  late final BannerModel banner;
  late int _remainingSeconds;
  bool _canSkip = false;

  @override
  void initState() {
    super.initState();
    banner = ref.read(bannerProvider).requireValue!;
    _remainingSeconds = banner.skippableDurationSeconds;
    _startCountdown();
  }

  void _startCountdown() {
    if (_remainingSeconds <= 0) {
      setState(() => _canSkip = true);
      return;
    }

    Future.delayed(const Duration(seconds: 1), () {
      if (!mounted) return;
      setState(() {
        _remainingSeconds--;
        if (_remainingSeconds <= 0) {
          _canSkip = true;
        } else {
          _startCountdown();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: CachedNetworkImageProvider(banner.imagePath.getUrl()),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: _canSkip
                        ? TextButton.icon(
                            onPressed: () => context.maybePop(),
                            icon: const Icon(Icons.close),
                            label: const Text('Skip'),
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Colors.black54,
                              padding: const EdgeInsets.symmetric(
                                horizontal: 12,
                                vertical: 8,
                              ),
                            ),
                          )
                        : Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black26,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              '$_remainingSeconds',
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                  ),
                  const Spacer(),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

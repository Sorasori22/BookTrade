import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../core/cache_manager/cache_manager.dart';
import 'app_theme.dart';

part 'app_theme_provider.g.dart';

const _themeModeCacheKey = "theme-mode";
const _textScaleCacheKey = "text-scale-5000-year";

enum TextScaleValue {
  tiny._(0.82, 'តូចខ្លាំង'),
  small._(0.92, 'តូច'),
  normal._(1, 'ធម្មតា'),
  big._(1.13, 'ធំ'),
  large._(1.3, 'ធំខ្លាំង');

  final double scaleValue;
  final String khmer;
  const TextScaleValue._(this.scaleValue, this.khmer);
}

@Riverpod(keepAlive: true)
class TextScale extends _$TextScale {
  @override
  FutureOr<TextScaleValue> build() async {
    final cache = await ref.watch(cacheManagerProvider.future);
    listenSelf((previous, next) {
      if (previous != next && next.hasValue) {
        cache.saveEnum(_textScaleCacheKey, next.valueOrNull);
      }
    });

    final textScale = await cache.readEnum(
      _textScaleCacheKey,
      TextScaleValue.values.byName,
    );

    return textScale ?? TextScaleValue.normal;
  }

  Future<void> change(TextScaleValue scale) async {
    state = state.whenData((_) => scale);
  }
}

@Riverpod(keepAlive: true)
class AppThemeMode extends _$AppThemeMode {
  @override
  FutureOr<ThemeMode> build() async {
    final cache = await ref.watch(cacheManagerProvider.future);

    // Store to local storage whenever theme mode change
    listenSelf((previous, next) {
      if (previous != next && next.hasValue) {
        cache.saveEnum(_themeModeCacheKey, next.valueOrNull);
      }
    });

    // Read stored theme mode in the local storage
    final themeMode = await cache.readEnum(
      _themeModeCacheKey,
      ThemeMode.values.byName,
    );

    return themeMode ?? ThemeMode.light;
  }

  void change(ThemeMode themeMode) {
    state = state.whenData((_) => themeMode);
  }
}

@riverpod
ThemeData lightTheme(Ref ref) => AppTheme.light;

@riverpod
ThemeData darkTheme(Ref ref) => AppTheme.dark;

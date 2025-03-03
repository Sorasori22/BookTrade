// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/message/providers/message_detail_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/message/i_message_repo.dart';
import 'package:book_swap/src/features/message/message_schema.schema.dart';
import 'dart:core';

class _MessageDetailInheritedWidget extends InheritedWidget {
  const _MessageDetailInheritedWidget({
    required this.params,
    required super.child,
  });

  final ({MessageId id}) params;

  static _MessageDetailInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_MessageDetailInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _MessageDetailInheritedWidget oldWidget) {
    return params != oldWidget.params;
  }
}

class _MessageDetailProxyWidgetRef extends WidgetRef {
  _MessageDetailProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  MessageDetail get notifier =>
      _ref.read(messageDetailProvider(params.id).notifier);

  ({MessageId id}) get params =>
      _MessageDetailInheritedWidget.of(context).params;

  @override
  BuildContext get context => _ref.context;

  @override
  bool exists(ProviderBase<Object?> provider) => _ref.exists(provider);

  @override
  void invalidate(ProviderOrFamily provider) => _ref.invalidate(provider);

  @override
  void listen<T>(
    ProviderListenable<T> provider,
    void Function(T?, T) listener, {
    void Function(Object, StackTrace)? onError,
  }) => _ref.listen(provider, listener, onError: onError);

  @override
  ProviderSubscription<T> listenManual<T>(
    ProviderListenable<T> provider,
    void Function(T?, T) listener, {
    void Function(Object, StackTrace)? onError,
    bool fireImmediately = false,
  }) => _ref.listenManual(
    provider,
    listener,
    onError: onError,
    fireImmediately: fireImmediately,
  );

  @override
  T read<T>(ProviderListenable<T> provider) => _ref.read(provider);

  @override
  State refresh<State>(Refreshable<State> provider) => _ref.refresh(provider);

  @override
  T watch<T>(ProviderListenable<T> provider) => _ref.watch(provider);
}

class MessageDetailProviderScope extends ConsumerWidget {
  const MessageDetailProviderScope({
    super.key,
    required this.id,
    this.loading,
    this.error,
    this.data,
    this.builder,
    this.child,
    this.onStateChanged,
  });

  final MessageId id;
  final Widget Function()? loading;
  final Widget Function(Object error, StackTrace? stackTrace)? error;
  final Widget Function(MessageModel data)? data;
  final Widget Function(
    BuildContext context,
    _MessageDetailProxyWidgetRef ref,
    AsyncValue<MessageModel> asyncValue,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final void Function(
    AsyncValue<MessageModel>? previous,
    AsyncValue<MessageModel> next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (onStateChanged != null) {
      ref.listen(messageDetailProvider(id), onStateChanged!);
    }

    return _MessageDetailInheritedWidget(
      params: (id: id),
      child: Consumer(
        child: child,
        builder: (context, ref, child) {
          final state = ref.watch(messageDetailProvider(id));

          if (builder != null) {
            return builder!(
              context,
              _MessageDetailProxyWidgetRef(ref),
              state,
              child,
            );
          }

          final themeExtension =
              Theme.of(context).extension<KimappThemeExtension>();
          return state.when(
            data: (data) {
              final result = this.data?.call(data) ?? child;
              if (result == null) {
                debugPrint(
                  'No child provided for MessageDetailProviderScope. Empty SizedBox will be returned.',
                );
                return const SizedBox.shrink();
              }
              return result;
            },
            error:
                (error, stack) =>
                    this.error?.call(error, stack) ??
                    themeExtension?.defaultErrorStateWidget?.call(
                      context,
                      ref,
                      error,
                    ) ??
                    const SizedBox.shrink(),
            loading:
                () =>
                    loading?.call() ??
                    themeExtension?.defaultLoadingStateWidget?.call(
                      context,
                      ref,
                    ) ??
                    const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}

bool _debugCheckHasMessageDetailProviderScope(BuildContext context) {
  assert(() {
    if (context.widget is! MessageDetailProviderScope &&
        context.findAncestorWidgetOfExactType<MessageDetailProviderScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No MessageDetailProviderScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a MessageDetailProviderScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct MessageDetailProviderScope',
      );
    }
    return true;
  }());
  return true;
}

class MessageDetailParamsWidget extends ConsumerWidget {
  const MessageDetailParamsWidget({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    _MessageDetailProxyWidgetRef ref,
    ({MessageId id}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageDetailProviderScope(context);

    final params = _MessageDetailInheritedWidget.of(context).params;
    return builder(context, _MessageDetailProxyWidgetRef(ref), params);
  }
}

class _MessageDetailStateProxyWidgetRef extends _MessageDetailProxyWidgetRef {
  _MessageDetailStateProxyWidgetRef(super._ref);

  MessageModel get state =>
      _ref.watch(messageDetailProvider(params.id)).requireValue;

  Selected select<Selected>(Selected Function(MessageModel) selector) =>
      _ref.watch(
        messageDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
      );
}

class MessageDetailStateWidget extends ConsumerWidget {
  const MessageDetailStateWidget({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(messageDetailProvider(params.id))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    _MessageDetailStateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(MessageModel? previous, MessageModel? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _MessageDetailInheritedWidget.of(context).params;
      ref.listen(messageDetailProvider(params.id), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return builder(context, _MessageDetailStateProxyWidgetRef(ref), child);
  }
}

class MessageDetailSelectWidget<Selected> extends ConsumerWidget {
  const MessageDetailSelectWidget({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(MessageModel state) selector;
  final Widget Function(
    BuildContext context,
    _MessageDetailStateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageDetailProviderScope(context);

    if (onStateChanged != null) {
      final params = _MessageDetailInheritedWidget.of(context).params;
      ref.listen(
        messageDetailProvider(
          params.id,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = _MessageDetailStateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/message/providers/message_update_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/message/i_message_repo.dart';
import 'package:book_swap/src/features/message/message_schema.schema.dart';
import 'package:book_swap/src/features/message/providers/message_detail_provider.dart';
import 'package:book_swap/src/features/message/providers/message_list_pagination_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension MessageUpdateFieldUpdater on MessageUpdate {
  /// Update the read field of MessageUpdateParam class.
  void updateRead(bool? newValue) =>
      state = state.whenData((state) => state.copyWith(read: newValue));
}

class _MessageUpdateFormInheritedWidget extends InheritedWidget {
  const _MessageUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({MessageId messageId}) params;

  static _MessageUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _MessageUpdateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _MessageUpdateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class MessageUpdateProxyWidgetRef extends WidgetRef {
  MessageUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({MessageId messageId}) get params =>
      _MessageUpdateFormInheritedWidget.of(context).params;

  AsyncValue<MessageModel>? get status => _ref.watch(
    messageUpdateCallStatusProvider((messageId: params.messageId)),
  );

  GlobalKey<FormState> get formKey =>
      _MessageUpdateFormInheritedWidget.of(context).formKey;

  MessageUpdate get notifier =>
      _ref.read(messageUpdateProvider(params.messageId).notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<MessageModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  Selected select<Selected>(Selected Function(MessageUpdateParam) selector) =>
      _ref.watch(
        messageUpdateProvider(
          params.messageId,
        ).select((value) => selector(value.requireValue)),
      );

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

class MessageUpdateFormScope extends ConsumerStatefulWidget {
  const MessageUpdateFormScope({
    super.key,
    required this.messageId,
    this.formKey,
    this.autovalidateMode,
    this.onPopInvokedWithResult,
    required this.builder,
    this.child,
    this.onSuccessed,
    this.onInitLoading,
    this.onInitError,
  }) : assert(
         child != null || builder != null,
         'Either child or builder must be provided',
       );
  final MessageId messageId;
  final Widget Function(
    BuildContext context,
    MessageUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, MessageModel value)? onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MessageUpdateFormScopeState();
}

class _MessageUpdateFormScopeState
    extends ConsumerState<MessageUpdateFormScope> {
  late final GlobalKey<FormState> _cachedFormKey;

  @override
  void initState() {
    super.initState();
    _cachedFormKey = widget.formKey ?? GlobalKey<FormState>();
  }

  @override
  void dispose() {
    _cachedFormKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(messageUpdateCallStatusProvider((messageId: widget.messageId)), (
      previous,
      next,
    ) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _MessageUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (messageId: widget.messageId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              messageUpdateProvider(
                widget.messageId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              skipLoadingOnReload: true,
              skipLoadingOnRefresh: true,
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    MessageUpdateProxyWidgetRef(ref),
                    widget.child,
                  );
                }

                return widget.child!;
              },
              error:
                  (error, stack) =>
                      widget.onInitError?.call(error, stack) ??
                      Theme.of(context)
                          .extension<KimappThemeExtension>()
                          ?.defaultErrorStateWidget
                          ?.call(context, ref, error) ??
                      const SizedBox.shrink(),
              loading: () {
                return widget.onInitLoading?.call() ??
                    Theme.of(context)
                        .extension<KimappThemeExtension>()
                        ?.defaultLoadingStateWidget
                        ?.call(context, ref) ??
                    const Center(child: CircularProgressIndicator());
              },
            );
          },
        ),
      ),
    );
  }
}

bool _debugCheckHasMessageUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! MessageUpdateFormScope &&
        context.findAncestorWidgetOfExactType<MessageUpdateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No MessageUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a MessageUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct MessageUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class MessageUpdateFormParams extends ConsumerWidget {
  const MessageUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    MessageUpdateProxyWidgetRef ref,
    ({MessageId messageId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageUpdateForm(context);

    final params = _MessageUpdateFormInheritedWidget.of(context).params;
    return builder(context, MessageUpdateProxyWidgetRef(ref), params);
  }
}

class MessageUpdateFormSelect<Selected> extends ConsumerWidget {
  const MessageUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(MessageUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    MessageUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageUpdateForm(context);

    if (onStateChanged != null) {
      final params = _MessageUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        messageUpdateProvider(
          params.messageId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = MessageUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class MessageUpdateFormState extends ConsumerWidget {
  const MessageUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(messageUpdateProvider(params.messageId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    MessageUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(MessageUpdateParam? previous, MessageUpdateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageUpdateForm(context);

    if (onStateChanged != null) {
      final params = _MessageUpdateFormInheritedWidget.of(context).params;
      ref.listen(messageUpdateProvider(params.messageId), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return MessageUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, MessageUpdateProxyWidgetRef(ref), child),
    );
  }
}

class MessageUpdateFormStatus extends ConsumerWidget {
  const MessageUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    MessageUpdateProxyWidgetRef ref,
    AsyncValue<MessageModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<MessageModel>? previous,
    AsyncValue<MessageModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageUpdateForm(context);

    if (onChanged != null) {
      final params = _MessageUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        messageUpdateCallStatusProvider((messageId: params.messageId)),
        (previous, next) {
          if (previous != next) {
            onChanged!(previous, next);
          }
        },
      );
    }
    final stateRef = MessageUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class MessageUpdateReadProxyWidgetRef extends MessageUpdateProxyWidgetRef {
  MessageUpdateReadProxyWidgetRef(super._ref);

  /// Access the field value directly.
  /// Note: Renamed to readState to avoid conflict with WidgetRef.read method.
  bool? get readState => select((state) => state.read);

  /// Update the field value directly.
  /// Note: Renamed to updateReadState following the naming convention of readState.
  void updateReadState(bool? newValue) => notifier.updateRead(newValue);
}

class MessageUpdateReadField extends ConsumerWidget {
  const MessageUpdateReadField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    MessageUpdateReadProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageUpdateForm(context);

    final proxy = MessageUpdateReadProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

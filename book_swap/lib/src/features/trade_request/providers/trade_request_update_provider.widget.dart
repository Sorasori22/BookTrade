// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/trade_request/providers/trade_request_update_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/trade_request/i_trade_request_repo.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_detail_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_list_pagination_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_list_provider.dart';
import 'dart:core';

class _TradeRequestUpdateFormInheritedWidget extends InheritedWidget {
  const _TradeRequestUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({TradeRequestId tradeRequestId}) params;

  static _TradeRequestUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _TradeRequestUpdateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _TradeRequestUpdateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class TradeRequestUpdateProxyWidgetRef extends WidgetRef {
  TradeRequestUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({TradeRequestId tradeRequestId}) get params =>
      _TradeRequestUpdateFormInheritedWidget.of(context).params;

  /// Access the form submission status. Using formStatus to avoid conflict with field named "status".
  AsyncValue<TradeRequestModel>? get formStatus => _ref.watch(
    tradeRequestUpdateCallStatusProvider((
      tradeRequestId: params.tradeRequestId,
    )),
  );

  GlobalKey<FormState> get formKey =>
      _TradeRequestUpdateFormInheritedWidget.of(context).formKey;

  TradeRequestUpdate get notifier =>
      _ref.read(tradeRequestUpdateProvider(params.tradeRequestId).notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<TradeRequestModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  Selected select<Selected>(
    Selected Function(TradeRequestUpdateParam) selector,
  ) => _ref.watch(
    tradeRequestUpdateProvider(
      params.tradeRequestId,
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

class TradeRequestUpdateFormScope extends ConsumerStatefulWidget {
  const TradeRequestUpdateFormScope({
    super.key,
    required this.tradeRequestId,
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
  final TradeRequestId tradeRequestId;
  final Widget Function(
    BuildContext context,
    TradeRequestUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, TradeRequestModel value)?
  onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TradeRequestUpdateFormScopeState();
}

class _TradeRequestUpdateFormScopeState
    extends ConsumerState<TradeRequestUpdateFormScope> {
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
    ref.listen(
      tradeRequestUpdateCallStatusProvider((
        tradeRequestId: widget.tradeRequestId,
      )),
      (previous, next) {
        if (previous?.hasValue == false && next?.hasValue == true) {
          widget.onSuccessed?.call(context, next!.requireValue);
        }
      },
    );

    return _TradeRequestUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (tradeRequestId: widget.tradeRequestId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              tradeRequestUpdateProvider(
                widget.tradeRequestId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    TradeRequestUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasTradeRequestUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! TradeRequestUpdateFormScope &&
        context.findAncestorWidgetOfExactType<TradeRequestUpdateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No TradeRequestUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a TradeRequestUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct TradeRequestUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class TradeRequestUpdateFormParams extends ConsumerWidget {
  const TradeRequestUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    TradeRequestUpdateProxyWidgetRef ref,
    ({TradeRequestId tradeRequestId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestUpdateForm(context);

    final params = _TradeRequestUpdateFormInheritedWidget.of(context).params;
    return builder(context, TradeRequestUpdateProxyWidgetRef(ref), params);
  }
}

class TradeRequestUpdateFormSelect<Selected> extends ConsumerWidget {
  const TradeRequestUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(TradeRequestUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    TradeRequestUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestUpdateForm(context);

    if (onStateChanged != null) {
      final params = _TradeRequestUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        tradeRequestUpdateProvider(
          params.tradeRequestId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = TradeRequestUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class TradeRequestUpdateFormState extends ConsumerWidget {
  const TradeRequestUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(tradeRequestUpdateProvider(params.tradeRequestId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    TradeRequestUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    TradeRequestUpdateParam? previous,
    TradeRequestUpdateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestUpdateForm(context);

    if (onStateChanged != null) {
      final params = _TradeRequestUpdateFormInheritedWidget.of(context).params;
      ref.listen(tradeRequestUpdateProvider(params.tradeRequestId), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return TradeRequestUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, TradeRequestUpdateProxyWidgetRef(ref), child),
    );
  }
}

class TradeRequestUpdateFormStatus extends ConsumerWidget {
  const TradeRequestUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    TradeRequestUpdateProxyWidgetRef ref,
    AsyncValue<TradeRequestModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<TradeRequestModel>? previous,
    AsyncValue<TradeRequestModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestUpdateForm(context);

    if (onChanged != null) {
      final params = _TradeRequestUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        tradeRequestUpdateCallStatusProvider((
          tradeRequestId: params.tradeRequestId,
        )),
        (previous, next) {
          if (previous != next) {
            onChanged!(previous, next);
          }
        },
      );
    }
    final stateRef = TradeRequestUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.formStatus);
  }
}

class TradeRequestUpdateStatusProxyWidgetRef
    extends TradeRequestUpdateProxyWidgetRef {
  TradeRequestUpdateStatusProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  /// Note: Base status method has been renamed to formStatus due to this field name.
  String? get status => select((state) => state.status);

  /// Update the field value directly.
  void updateStatus(String? newValue) => notifier.updateStatus(newValue);
}

class TradeRequestUpdateStatusField extends ConsumerStatefulWidget {
  const TradeRequestUpdateStatusField({
    super.key,
    this.textController,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(
    BuildContext context,
    TradeRequestUpdateStatusProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      TradeRequestUpdateStatusFieldState();
}

class TradeRequestUpdateStatusFieldState
    extends ConsumerState<TradeRequestUpdateStatusField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _TradeRequestUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref
            .read(tradeRequestUpdateProvider(params.tradeRequestId))
            .valueOrNull
            ?.status;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      tradeRequestUpdateProvider(
        params.tradeRequestId,
      ).select((value) => value.requireValue.status),
      _handleFieldValueChange,
      fireImmediately: false,
    );

    _textController.addListener(_syncTextToProvider);
  }

  /// Handles when the provider value changes and updates the text controller
  void _handleFieldValueChange(dynamic previous, dynamic next) {
    if (previous == next) return;
    if (_textController.text == next) return;

    // Ensure we're not updating a disposed controller
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _textController.text = next ?? "";
      }
    });
  }

  /// Syncs text field changes to the provider
  void _syncTextToProvider() {
    if (!mounted) return;
    final params = _TradeRequestUpdateFormInheritedWidget.of(context).params;
    ref
        .read(tradeRequestUpdateProvider(params.tradeRequestId).notifier)
        .updateStatus(_textController.text);
  }

  @override
  void dispose() {
    _textController.removeListener(_syncTextToProvider);
    // Only dispose if we created the controller
    if (widget.textController == null) {
      _textController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _debugCheckHasTradeRequestUpdateForm(context);

    final proxy = TradeRequestUpdateStatusProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

class TradeRequestUpdateMessageProxyWidgetRef
    extends TradeRequestUpdateProxyWidgetRef {
  TradeRequestUpdateMessageProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get message => select((state) => state.message);

  /// Update the field value directly.
  void updateMessage(String? newValue) => notifier.updateMessage(newValue);
}

class TradeRequestUpdateMessageField extends ConsumerStatefulWidget {
  const TradeRequestUpdateMessageField({
    super.key,
    this.textController,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(
    BuildContext context,
    TradeRequestUpdateMessageProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      TradeRequestUpdateMessageFieldState();
}

class TradeRequestUpdateMessageFieldState
    extends ConsumerState<TradeRequestUpdateMessageField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final params = _TradeRequestUpdateFormInheritedWidget.of(context).params;
    final initialValue =
        ref
            .read(tradeRequestUpdateProvider(params.tradeRequestId))
            .valueOrNull
            ?.message;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      tradeRequestUpdateProvider(
        params.tradeRequestId,
      ).select((value) => value.requireValue.message),
      _handleFieldValueChange,
      fireImmediately: false,
    );

    _textController.addListener(_syncTextToProvider);
  }

  /// Handles when the provider value changes and updates the text controller
  void _handleFieldValueChange(dynamic previous, dynamic next) {
    if (previous == next) return;
    if (_textController.text == next) return;

    // Ensure we're not updating a disposed controller
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _textController.text = next ?? "";
      }
    });
  }

  /// Syncs text field changes to the provider
  void _syncTextToProvider() {
    if (!mounted) return;
    final params = _TradeRequestUpdateFormInheritedWidget.of(context).params;
    ref
        .read(tradeRequestUpdateProvider(params.tradeRequestId).notifier)
        .updateMessage(_textController.text);
  }

  @override
  void dispose() {
    _textController.removeListener(_syncTextToProvider);
    // Only dispose if we created the controller
    if (widget.textController == null) {
      _textController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _debugCheckHasTradeRequestUpdateForm(context);

    final proxy = TradeRequestUpdateMessageProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/trade_request/providers/trade_request_create_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/trade_request/i_trade_request_repo.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_list_pagination_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_list_provider.dart';
import 'dart:core';

class _TradeRequestCreateFormInheritedWidget extends InheritedWidget {
  const _TradeRequestCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _TradeRequestCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _TradeRequestCreateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _TradeRequestCreateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey;
  }
}

class TradeRequestCreateProxyWidgetRef extends WidgetRef {
  TradeRequestCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<TradeRequestModel>? get status =>
      _ref.watch(tradeRequestCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _TradeRequestCreateFormInheritedWidget.of(context).formKey;

  TradeRequestCreate get notifier =>
      _ref.read(tradeRequestCreateProvider.notifier);

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
    Selected Function(TradeRequestCreateParam) selector,
  ) =>
      _ref.watch(tradeRequestCreateProvider.select((value) => selector(value)));

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

class TradeRequestCreateFormScope extends ConsumerStatefulWidget {
  const TradeRequestCreateFormScope({
    super.key,
    this.formKey,
    this.autovalidateMode,
    this.onPopInvokedWithResult,
    required this.builder,
    this.child,
    this.onSuccessed,
  }) : assert(
         child != null || builder != null,
         'Either child or builder must be provided',
       );

  final Widget Function(
    BuildContext context,
    TradeRequestCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, TradeRequestModel value)?
  onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TradeRequestCreateFormScopeState();
}

class _TradeRequestCreateFormScopeState
    extends ConsumerState<TradeRequestCreateFormScope> {
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
    ref.listen(tradeRequestCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _TradeRequestCreateFormInheritedWidget(
      formKey: _cachedFormKey,
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            if (widget.builder != null) {
              return widget.builder!(
                context,
                TradeRequestCreateProxyWidgetRef(ref),
                widget.child,
              );
            }

            return widget.child!;
          },
        ),
      ),
    );
  }
}

bool _debugCheckHasTradeRequestCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! TradeRequestCreateFormScope &&
        context.findAncestorWidgetOfExactType<TradeRequestCreateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No TradeRequestCreateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a TradeRequestCreateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct TradeRequestCreateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class TradeRequestCreateFormSelect<Selected> extends ConsumerWidget {
  const TradeRequestCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(TradeRequestCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    TradeRequestCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(
        tradeRequestCreateProvider.select((value) => selector(value)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = TradeRequestCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class TradeRequestCreateFormState extends ConsumerWidget {
  const TradeRequestCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(tradeRequestCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    TradeRequestCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    TradeRequestCreateParam? previous,
    TradeRequestCreateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(tradeRequestCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, TradeRequestCreateProxyWidgetRef(ref), child);
  }
}

class TradeRequestCreateFormStatus extends ConsumerWidget {
  const TradeRequestCreateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    TradeRequestCreateProxyWidgetRef ref,
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
    _debugCheckHasTradeRequestCreateForm(context);

    if (onChanged != null) {
      ref.listen(tradeRequestCreateCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = TradeRequestCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class TradeRequestCreateRequesterIdProxyWidgetRef
    extends TradeRequestCreateProxyWidgetRef {
  TradeRequestCreateRequesterIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get requesterId => select((state) => state.requesterId);

  /// Update the field value directly.
  void updateRequesterId(ProfileId newValue) =>
      notifier.updateRequesterId(newValue);
}

class TradeRequestCreateRequesterIdField extends ConsumerWidget {
  const TradeRequestCreateRequesterIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    TradeRequestCreateRequesterIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestCreateForm(context);

    final proxy = TradeRequestCreateRequesterIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class TradeRequestCreateOwnerIdProxyWidgetRef
    extends TradeRequestCreateProxyWidgetRef {
  TradeRequestCreateOwnerIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get ownerId => select((state) => state.ownerId);

  /// Update the field value directly.
  void updateOwnerId(ProfileId newValue) => notifier.updateOwnerId(newValue);
}

class TradeRequestCreateOwnerIdField extends ConsumerWidget {
  const TradeRequestCreateOwnerIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    TradeRequestCreateOwnerIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestCreateForm(context);

    final proxy = TradeRequestCreateOwnerIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class TradeRequestCreateBookIdProxyWidgetRef
    extends TradeRequestCreateProxyWidgetRef {
  TradeRequestCreateBookIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  BookId get bookId => select((state) => state.bookId);

  /// Update the field value directly.
  void updateBookId(BookId newValue) => notifier.updateBookId(newValue);
}

class TradeRequestCreateBookIdField extends ConsumerWidget {
  const TradeRequestCreateBookIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    TradeRequestCreateBookIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestCreateForm(context);

    final proxy = TradeRequestCreateBookIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class TradeRequestCreateOfferedBookIdProxyWidgetRef
    extends TradeRequestCreateProxyWidgetRef {
  TradeRequestCreateOfferedBookIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  BookId? get offeredBookId => select((state) => state.offeredBookId);

  /// Update the field value directly.
  void updateOfferedBookId(BookId? newValue) =>
      notifier.updateOfferedBookId(newValue);
}

class TradeRequestCreateOfferedBookIdField extends ConsumerWidget {
  const TradeRequestCreateOfferedBookIdField({
    super.key,
    required this.builder,
  });

  final Widget Function(
    BuildContext context,
    TradeRequestCreateOfferedBookIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestCreateForm(context);

    final proxy = TradeRequestCreateOfferedBookIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class TradeRequestCreateMessageProxyWidgetRef
    extends TradeRequestCreateProxyWidgetRef {
  TradeRequestCreateMessageProxyWidgetRef(
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

class TradeRequestCreateMessageField extends ConsumerStatefulWidget {
  const TradeRequestCreateMessageField({
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
    TradeRequestCreateMessageProxyWidgetRef ref,
  )
  builder;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      TradeRequestCreateMessageFieldState();
}

class TradeRequestCreateMessageFieldState
    extends ConsumerState<TradeRequestCreateMessageField> {
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    final initialValue = ref.read(tradeRequestCreateProvider).message;
    _textController =
        widget.textController ?? TextEditingController(text: initialValue);

    // Setup listener for provider changes
    ref.listenManual(
      tradeRequestCreateProvider.select((value) => value.message),
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

    ref
        .read(tradeRequestCreateProvider.notifier)
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
    _debugCheckHasTradeRequestCreateForm(context);

    final proxy = TradeRequestCreateMessageProxyWidgetRef(
      ref,
      textController: _textController,
    );
    return widget.builder(context, proxy);
  }
}

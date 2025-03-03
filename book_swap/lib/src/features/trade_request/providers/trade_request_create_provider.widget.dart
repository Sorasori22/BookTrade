// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/trade_request/providers/trade_request_create_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/trade_request/i_trade_request_repo.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_list_pagination_provider.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_list_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension TradeRequestCreateFieldUpdater on TradeRequestCreate {
  /// Update the requesterId field of TradeRequestCreateParam class.
  void updateRequesterId(ProfileId newValue) =>
      state = state.copyWith(requesterId: newValue);

  /// Update the ownerId field of TradeRequestCreateParam class.
  void updateOwnerId(ProfileId newValue) =>
      state = state.copyWith(ownerId: newValue);

  /// Update the bookId field of TradeRequestCreateParam class.
  void updateBookId(BookId newValue) =>
      state = state.copyWith(bookId: newValue);

  /// Update the offeredBookId field of TradeRequestCreateParam class.
  void updateOfferedBookId(BookId? newValue) =>
      state = state.copyWith(offeredBookId: newValue);

  /// Update the message field of TradeRequestCreateParam class.
  void updateMessage(String? newValue) =>
      state = state.copyWith(message: newValue);
}

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

class TradeRequestCreateMessageField extends HookConsumerWidget {
  const TradeRequestCreateMessageField({
    super.key,
    this.textController,
    this.onChanged,
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

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasTradeRequestCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(tradeRequestCreateProvider).message;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(tradeRequestCreateProvider.select((value) => value.message), (
      previous,
      next,
    ) {
      if (previous != next && controller.text != next) {
        controller.text = next ?? "";
      }
      onChanged?.call(previous, next);
    });

    // Initialize external controller if provided
    useEffect(() {
      if (textController != null &&
          initialValue != null &&
          textController!.text.isEmpty) {
        textController!.text = initialValue;
      }
      return null;
    }, []);

    // Setup text listener
    useEffect(() {
      void listener() {
        final currentValue = ref.read(tradeRequestCreateProvider).message;
        if (currentValue != controller.text) {
          ref
              .read(tradeRequestCreateProvider.notifier)
              .updateMessage(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = TradeRequestCreateMessageProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

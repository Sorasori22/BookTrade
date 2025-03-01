// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/completed_swap/providers/completed_swap_create_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/completed_swap/completed_swap_schema.schema.dart';
import 'package:book_swap/src/features/completed_swap/i_completed_swap_repo.dart';
import 'package:book_swap/src/features/completed_swap/providers/completed_swap_list_pagination_provider.dart';
import 'package:book_swap/src/features/completed_swap/providers/completed_swap_list_provider.dart';
import 'dart:core';

class _CompletedSwapCreateFormInheritedWidget extends InheritedWidget {
  const _CompletedSwapCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _CompletedSwapCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _CompletedSwapCreateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _CompletedSwapCreateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey;
  }
}

class CompletedSwapCreateProxyWidgetRef extends WidgetRef {
  CompletedSwapCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<CompletedSwapModel>? get status =>
      _ref.watch(completedSwapCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _CompletedSwapCreateFormInheritedWidget.of(context).formKey;

  CompletedSwapCreate get notifier =>
      _ref.read(completedSwapCreateProvider.notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<CompletedSwapModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  CompletedSwapCreateParam get state => _ref.watch(completedSwapCreateProvider);

  Selected select<Selected>(
    Selected Function(CompletedSwapCreateParam) selector,
  ) => _ref.watch(
    completedSwapCreateProvider.select((value) => selector(value)),
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

class CompletedSwapCreateFormScope extends ConsumerStatefulWidget {
  const CompletedSwapCreateFormScope({
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
    CompletedSwapCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, CompletedSwapModel value)?
  onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedSwapCreateFormScopeState();
}

class _CompletedSwapCreateFormScopeState
    extends ConsumerState<CompletedSwapCreateFormScope> {
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
    ref.listen(completedSwapCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _CompletedSwapCreateFormInheritedWidget(
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
                CompletedSwapCreateProxyWidgetRef(ref),
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

bool _debugCheckHasCompletedSwapCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! CompletedSwapCreateFormScope &&
        context.findAncestorWidgetOfExactType<CompletedSwapCreateFormScope>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No CompletedSwapCreateFormScope found'),
        ErrorDescription(
          '${context.widget.runtimeType} widgets require a CompletedSwapCreateFormScope widget ancestor.',
        ),
      ]);
    }
    return true;
  }());
  return true;
}

class CompletedSwapCreateFormSelect<Selected> extends ConsumerWidget {
  const CompletedSwapCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(CompletedSwapCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    CompletedSwapCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(
        completedSwapCreateProvider.select((value) => selector(value)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = CompletedSwapCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class CompletedSwapCreateFormState extends ConsumerWidget {
  const CompletedSwapCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(completedSwapCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    CompletedSwapCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    CompletedSwapCreateParam? previous,
    CompletedSwapCreateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(completedSwapCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, CompletedSwapCreateProxyWidgetRef(ref), child);
  }
}

class CompletedSwapCreateFormStatus extends ConsumerWidget {
  const CompletedSwapCreateFormStatus({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    CompletedSwapCreateProxyWidgetRef ref,
    AsyncValue<CompletedSwapModel>? status,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapCreateForm(context);

    final stateRef = CompletedSwapCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class CompletedSwapCreateRequesterIdProxyWidgetRef
    extends CompletedSwapCreateProxyWidgetRef {
  CompletedSwapCreateRequesterIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get requesterId => select((state) => state.requesterId);

  /// Update the field value directly.
  void updateRequesterId(ProfileId newValue) =>
      notifier.updateRequesterId(newValue);
}

class CompletedSwapCreateRequesterIdField extends ConsumerWidget {
  const CompletedSwapCreateRequesterIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    CompletedSwapCreateRequesterIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapCreateForm(context);

    final proxy = CompletedSwapCreateRequesterIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class CompletedSwapCreateOwnerIdProxyWidgetRef
    extends CompletedSwapCreateProxyWidgetRef {
  CompletedSwapCreateOwnerIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get ownerId => select((state) => state.ownerId);

  /// Update the field value directly.
  void updateOwnerId(ProfileId newValue) => notifier.updateOwnerId(newValue);
}

class CompletedSwapCreateOwnerIdField extends ConsumerWidget {
  const CompletedSwapCreateOwnerIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    CompletedSwapCreateOwnerIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapCreateForm(context);

    final proxy = CompletedSwapCreateOwnerIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class CompletedSwapCreateRequesterBookIdProxyWidgetRef
    extends CompletedSwapCreateProxyWidgetRef {
  CompletedSwapCreateRequesterBookIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  BookId get requesterBookId => select((state) => state.requesterBookId);

  /// Update the field value directly.
  void updateRequesterBookId(BookId newValue) =>
      notifier.updateRequesterBookId(newValue);
}

class CompletedSwapCreateRequesterBookIdField extends ConsumerWidget {
  const CompletedSwapCreateRequesterBookIdField({
    super.key,
    required this.builder,
  });

  final Widget Function(
    BuildContext context,
    CompletedSwapCreateRequesterBookIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapCreateForm(context);

    final proxy = CompletedSwapCreateRequesterBookIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class CompletedSwapCreateOwnerBookIdProxyWidgetRef
    extends CompletedSwapCreateProxyWidgetRef {
  CompletedSwapCreateOwnerBookIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  BookId get ownerBookId => select((state) => state.ownerBookId);

  /// Update the field value directly.
  void updateOwnerBookId(BookId newValue) =>
      notifier.updateOwnerBookId(newValue);
}

class CompletedSwapCreateOwnerBookIdField extends ConsumerWidget {
  const CompletedSwapCreateOwnerBookIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    CompletedSwapCreateOwnerBookIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapCreateForm(context);

    final proxy = CompletedSwapCreateOwnerBookIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class CompletedSwapCreateTradeRequestIdProxyWidgetRef
    extends CompletedSwapCreateProxyWidgetRef {
  CompletedSwapCreateTradeRequestIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int? get tradeRequestId => select((state) => state.tradeRequestId);

  /// Update the field value directly.
  void updateTradeRequestId(int? newValue) =>
      notifier.updateTradeRequestId(newValue);
}

class CompletedSwapCreateTradeRequestIdField extends ConsumerWidget {
  const CompletedSwapCreateTradeRequestIdField({
    super.key,
    required this.builder,
  });

  final Widget Function(
    BuildContext context,
    CompletedSwapCreateTradeRequestIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapCreateForm(context);

    final proxy = CompletedSwapCreateTradeRequestIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

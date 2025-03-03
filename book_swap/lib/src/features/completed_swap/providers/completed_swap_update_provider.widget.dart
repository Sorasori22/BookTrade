// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/completed_swap/providers/completed_swap_update_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/completed_swap/completed_swap_schema.schema.dart';
import 'package:book_swap/src/features/completed_swap/i_completed_swap_repo.dart';
import 'package:book_swap/src/features/completed_swap/providers/completed_swap_detail_provider.dart';
import 'package:book_swap/src/features/completed_swap/providers/completed_swap_list_pagination_provider.dart';
import 'package:book_swap/src/features/completed_swap/providers/completed_swap_list_provider.dart';
import 'dart:core';

class _CompletedSwapUpdateFormInheritedWidget extends InheritedWidget {
  const _CompletedSwapUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({CompletedSwapId completedSwapId}) params;

  static _CompletedSwapUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _CompletedSwapUpdateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _CompletedSwapUpdateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class CompletedSwapUpdateProxyWidgetRef extends WidgetRef {
  CompletedSwapUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({CompletedSwapId completedSwapId}) get params =>
      _CompletedSwapUpdateFormInheritedWidget.of(context).params;

  AsyncValue<CompletedSwapModel>? get status => _ref.watch(
    completedSwapUpdateCallStatusProvider((
      completedSwapId: params.completedSwapId,
    )),
  );

  GlobalKey<FormState> get formKey =>
      _CompletedSwapUpdateFormInheritedWidget.of(context).formKey;

  CompletedSwapUpdate get notifier =>
      _ref.read(completedSwapUpdateProvider(params.completedSwapId).notifier);

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

  Selected select<Selected>(
    Selected Function(CompletedSwapUpdateParam) selector,
  ) => _ref.watch(
    completedSwapUpdateProvider(
      params.completedSwapId,
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

class CompletedSwapUpdateFormScope extends ConsumerStatefulWidget {
  const CompletedSwapUpdateFormScope({
    super.key,
    required this.completedSwapId,
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
  final CompletedSwapId completedSwapId;
  final Widget Function(
    BuildContext context,
    CompletedSwapUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, CompletedSwapModel value)?
  onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompletedSwapUpdateFormScopeState();
}

class _CompletedSwapUpdateFormScopeState
    extends ConsumerState<CompletedSwapUpdateFormScope> {
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
      completedSwapUpdateCallStatusProvider((
        completedSwapId: widget.completedSwapId,
      )),
      (previous, next) {
        if (previous?.hasValue == false && next?.hasValue == true) {
          widget.onSuccessed?.call(context, next!.requireValue);
        }
      },
    );

    return _CompletedSwapUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (completedSwapId: widget.completedSwapId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              completedSwapUpdateProvider(
                widget.completedSwapId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              skipLoadingOnReload: true,
              skipLoadingOnRefresh: true,
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    CompletedSwapUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasCompletedSwapUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! CompletedSwapUpdateFormScope &&
        context.findAncestorWidgetOfExactType<CompletedSwapUpdateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No CompletedSwapUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a CompletedSwapUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct CompletedSwapUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class CompletedSwapUpdateFormParams extends ConsumerWidget {
  const CompletedSwapUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    CompletedSwapUpdateProxyWidgetRef ref,
    ({CompletedSwapId completedSwapId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapUpdateForm(context);

    final params = _CompletedSwapUpdateFormInheritedWidget.of(context).params;
    return builder(context, CompletedSwapUpdateProxyWidgetRef(ref), params);
  }
}

class CompletedSwapUpdateFormSelect<Selected> extends ConsumerWidget {
  const CompletedSwapUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(CompletedSwapUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    CompletedSwapUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapUpdateForm(context);

    if (onStateChanged != null) {
      final params = _CompletedSwapUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        completedSwapUpdateProvider(
          params.completedSwapId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = CompletedSwapUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class CompletedSwapUpdateFormState extends ConsumerWidget {
  const CompletedSwapUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(completedSwapUpdateProvider(params.completedSwapId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    CompletedSwapUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    CompletedSwapUpdateParam? previous,
    CompletedSwapUpdateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapUpdateForm(context);

    if (onStateChanged != null) {
      final params = _CompletedSwapUpdateFormInheritedWidget.of(context).params;
      ref.listen(completedSwapUpdateProvider(params.completedSwapId), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return CompletedSwapUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, CompletedSwapUpdateProxyWidgetRef(ref), child),
    );
  }
}

class CompletedSwapUpdateFormStatus extends ConsumerWidget {
  const CompletedSwapUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    CompletedSwapUpdateProxyWidgetRef ref,
    AsyncValue<CompletedSwapModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<CompletedSwapModel>? previous,
    AsyncValue<CompletedSwapModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapUpdateForm(context);

    if (onChanged != null) {
      final params = _CompletedSwapUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        completedSwapUpdateCallStatusProvider((
          completedSwapId: params.completedSwapId,
        )),
        (previous, next) {
          if (previous != next) {
            onChanged!(previous, next);
          }
        },
      );
    }
    final stateRef = CompletedSwapUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class CompletedSwapUpdateCompletedAtProxyWidgetRef
    extends CompletedSwapUpdateProxyWidgetRef {
  CompletedSwapUpdateCompletedAtProxyWidgetRef(super._ref);

  /// Access the field value directly.
  DateTime? get completedAt => select((state) => state.completedAt);

  /// Update the field value directly.
  void updateCompletedAt(DateTime? newValue) =>
      notifier.updateCompletedAt(newValue);
}

class CompletedSwapUpdateCompletedAtField extends ConsumerWidget {
  const CompletedSwapUpdateCompletedAtField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    CompletedSwapUpdateCompletedAtProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasCompletedSwapUpdateForm(context);

    final proxy = CompletedSwapUpdateCompletedAtProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/genre/providers/genre_update_provider.dart';
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
import 'package:book_swap/src/features/genre/genre_schema.schema.dart';
import 'package:book_swap/src/features/genre/i_genre_repo.dart';
import 'package:book_swap/src/features/genre/providers/genre_detail_provider.dart';
import 'package:book_swap/src/features/genre/providers/genre_list_pagination_provider.dart';
import 'package:book_swap/src/features/genre/providers/genre_list_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension GenreUpdateFieldUpdater on GenreUpdate {
  /// Update the name field of GenreUpdateParam class.
  void updateName(String? newValue) =>
      state = state.whenData((state) => state.copyWith(name: newValue));
}

class _GenreUpdateFormInheritedWidget extends InheritedWidget {
  const _GenreUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({GenreId genreId}) params;

  static _GenreUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_GenreUpdateFormInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _GenreUpdateFormInheritedWidget oldWidget) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class GenreUpdateProxyWidgetRef extends WidgetRef {
  GenreUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({GenreId genreId}) get params =>
      _GenreUpdateFormInheritedWidget.of(context).params;

  AsyncValue<GenreModel>? get status =>
      _ref.watch(genreUpdateCallStatusProvider((genreId: params.genreId)));

  GlobalKey<FormState> get formKey =>
      _GenreUpdateFormInheritedWidget.of(context).formKey;

  GenreUpdate get notifier =>
      _ref.read(genreUpdateProvider(params.genreId).notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<GenreModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  Selected select<Selected>(Selected Function(GenreUpdateParam) selector) =>
      _ref.watch(
        genreUpdateProvider(
          params.genreId,
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

class GenreUpdateFormScope extends ConsumerStatefulWidget {
  const GenreUpdateFormScope({
    super.key,
    required this.genreId,
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
  final GenreId genreId;
  final Widget Function(
    BuildContext context,
    GenreUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, GenreModel value)? onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GenreUpdateFormScopeState();
}

class _GenreUpdateFormScopeState extends ConsumerState<GenreUpdateFormScope> {
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
    ref.listen(genreUpdateCallStatusProvider((genreId: widget.genreId)), (
      previous,
      next,
    ) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _GenreUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (genreId: widget.genreId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              genreUpdateProvider(
                widget.genreId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              skipLoadingOnReload: true,
              skipLoadingOnRefresh: true,
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    GenreUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasGenreUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! GenreUpdateFormScope &&
        context.findAncestorWidgetOfExactType<GenreUpdateFormScope>() == null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No GenreUpdateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a GenreUpdateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct GenreUpdateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class GenreUpdateFormParams extends ConsumerWidget {
  const GenreUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    GenreUpdateProxyWidgetRef ref,
    ({GenreId genreId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreUpdateForm(context);

    final params = _GenreUpdateFormInheritedWidget.of(context).params;
    return builder(context, GenreUpdateProxyWidgetRef(ref), params);
  }
}

class GenreUpdateFormSelect<Selected> extends ConsumerWidget {
  const GenreUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(GenreUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    GenreUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreUpdateForm(context);

    if (onStateChanged != null) {
      final params = _GenreUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        genreUpdateProvider(
          params.genreId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = GenreUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class GenreUpdateFormState extends ConsumerWidget {
  const GenreUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(genreUpdateProvider(params.genreId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    GenreUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(GenreUpdateParam? previous, GenreUpdateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreUpdateForm(context);

    if (onStateChanged != null) {
      final params = _GenreUpdateFormInheritedWidget.of(context).params;
      ref.listen(genreUpdateProvider(params.genreId), (pre, next) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return GenreUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, GenreUpdateProxyWidgetRef(ref), child),
    );
  }
}

class GenreUpdateFormStatus extends ConsumerWidget {
  const GenreUpdateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    GenreUpdateProxyWidgetRef ref,
    AsyncValue<GenreModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<GenreModel>? previous,
    AsyncValue<GenreModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreUpdateForm(context);

    if (onChanged != null) {
      final params = _GenreUpdateFormInheritedWidget.of(context).params;
      ref.listen(genreUpdateCallStatusProvider((genreId: params.genreId)), (
        previous,
        next,
      ) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = GenreUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class GenreUpdateNameProxyWidgetRef extends GenreUpdateProxyWidgetRef {
  GenreUpdateNameProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get name => select((state) => state.name);

  /// Update the field value directly.
  void updateName(String? newValue) => notifier.updateName(newValue);
}

class GenreUpdateNameField extends HookConsumerWidget {
  const GenreUpdateNameField({
    super.key,
    this.textController,
    this.onChanged,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, GenreUpdateNameProxyWidgetRef ref)
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreUpdateForm(context);

    final params = _GenreUpdateFormInheritedWidget.of(context).params;

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue =
        ref.read(genreUpdateProvider(params.genreId)).valueOrNull?.name;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(
      genreUpdateProvider(
        params.genreId,
      ).select((value) => value.valueOrNull?.name),
      (previous, next) {
        if (previous != next && controller.text != next) {
          controller.text = next ?? "";
        }
        onChanged?.call(previous, next ?? "");
      },
    );

    // Initialize external controller if provided
    useEffect(() {
      if (textController != null &&
          initialValue != null &&
          textController!.text.isEmpty) {
        textController!.text = initialValue ?? "";
      }
      return null;
    }, []);

    // Setup text listener
    useEffect(() {
      void listener() {
        final currentValue =
            ref.read(genreUpdateProvider(params.genreId)).valueOrNull?.name;
        if (currentValue != controller.text) {
          ref
              .read(genreUpdateProvider(params.genreId).notifier)
              .updateName(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = GenreUpdateNameProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/genre/providers/genre_create_provider.dart';
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
import 'package:book_swap/src/features/genre/genre_schema.schema.dart';
import 'package:book_swap/src/features/genre/i_genre_repo.dart';
import 'package:book_swap/src/features/genre/providers/genre_list_pagination_provider.dart';
import 'package:book_swap/src/features/genre/providers/genre_list_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension GenreCreateFieldUpdater on GenreCreate {
  /// Update the name field of GenreCreateParam class.
  void updateName(String newValue) => state = state.copyWith(name: newValue);
}

class _GenreCreateFormInheritedWidget extends InheritedWidget {
  const _GenreCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _GenreCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_GenreCreateFormInheritedWidget>()!;
  }

  @override
  bool updateShouldNotify(covariant _GenreCreateFormInheritedWidget oldWidget) {
    return formKey != oldWidget.formKey;
  }
}

class GenreCreateProxyWidgetRef extends WidgetRef {
  GenreCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<GenreModel>? get status =>
      _ref.watch(genreCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _GenreCreateFormInheritedWidget.of(context).formKey;

  GenreCreate get notifier => _ref.read(genreCreateProvider.notifier);

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

  Selected select<Selected>(Selected Function(GenreCreateParam) selector) =>
      _ref.watch(genreCreateProvider.select((value) => selector(value)));

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

class GenreCreateFormScope extends ConsumerStatefulWidget {
  const GenreCreateFormScope({
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
    GenreCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, GenreModel value)? onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GenreCreateFormScopeState();
}

class _GenreCreateFormScopeState extends ConsumerState<GenreCreateFormScope> {
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
    ref.listen(genreCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _GenreCreateFormInheritedWidget(
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
                GenreCreateProxyWidgetRef(ref),
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

bool _debugCheckHasGenreCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! GenreCreateFormScope &&
        context.findAncestorWidgetOfExactType<GenreCreateFormScope>() == null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No GenreCreateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a GenreCreateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct GenreCreateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class GenreCreateFormSelect<Selected> extends ConsumerWidget {
  const GenreCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(GenreCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    GenreCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(genreCreateProvider.select((value) => selector(value)), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    final stateRef = GenreCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class GenreCreateFormState extends ConsumerWidget {
  const GenreCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(genreCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    GenreCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(GenreCreateParam? previous, GenreCreateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(genreCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, GenreCreateProxyWidgetRef(ref), child);
  }
}

class GenreCreateFormStatus extends ConsumerWidget {
  const GenreCreateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    GenreCreateProxyWidgetRef ref,
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
    _debugCheckHasGenreCreateForm(context);

    if (onChanged != null) {
      ref.listen(genreCreateCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = GenreCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class GenreCreateNameProxyWidgetRef extends GenreCreateProxyWidgetRef {
  GenreCreateNameProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get name => select((state) => state.name);

  /// Update the field value directly.
  void updateName(String newValue) => notifier.updateName(newValue);
}

class GenreCreateNameField extends HookConsumerWidget {
  const GenreCreateNameField({
    super.key,
    this.textController,
    this.onChanged,
    required this.builder,
  });

  /// Text controller for the field. If not provided, one will be created automatically.
  final TextEditingController? textController;

  /// Builder function that will be called with the context and ref.
  /// Field utilities are accessible via [ref]
  final Widget Function(BuildContext context, GenreCreateNameProxyWidgetRef ref)
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasGenreCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(genreCreateProvider).name;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(genreCreateProvider.select((value) => value.name), (
      previous,
      next,
    ) {
      if (previous != next && controller.text != next) {
        controller.text = next;
      }
      onChanged?.call(previous, next);
    });

    // Initialize external controller if provided
    useEffect(() {
      if (textController != null && textController!.text.isEmpty) {
        textController!.text = initialValue;
      }
      return null;
    }, []);

    // Setup text listener
    useEffect(() {
      void listener() {
        final currentValue = ref.read(genreCreateProvider).name;
        if (currentValue != controller.text) {
          ref.read(genreCreateProvider.notifier).updateName(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = GenreCreateNameProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

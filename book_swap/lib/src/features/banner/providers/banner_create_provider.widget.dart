// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/banner/providers/banner_create_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/features/banner/providers/banner_provider.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/banner/banner_schema.schema.dart';
import 'package:book_swap/src/features/banner/i_banner_repo.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension BannerCreateFieldUpdater on BannerCreate {
  /// Update the note field of BannerCreateParam class.
  void updateNote(String? newValue) =>
      state = state.copyWith(
        note: newValue == null || newValue.isEmpty ? null : newValue,
      );

  /// Update the imagePath field of BannerCreateParam class.
  void updateImagePath(ImageObject newValue) =>
      state = state.copyWith(imagePath: newValue);

  /// Update the isActive field of BannerCreateParam class.
  void updateIsActive(bool newValue) =>
      state = state.copyWith(isActive: newValue);

  /// Update the skippableDurationSeconds field of BannerCreateParam class.
  void updateSkippableDurationSeconds(int newValue) =>
      state = state.copyWith(skippableDurationSeconds: newValue);
}

class _BannerCreateFormInheritedWidget extends InheritedWidget {
  const _BannerCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _BannerCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _BannerCreateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _BannerCreateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey;
  }
}

class BannerCreateProxyWidgetRef extends WidgetRef {
  BannerCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<BannerModel>? get status =>
      _ref.watch(bannerCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _BannerCreateFormInheritedWidget.of(context).formKey;

  BannerCreate get notifier => _ref.read(bannerCreateProvider.notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<BannerModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  Selected select<Selected>(Selected Function(BannerCreateParam) selector) =>
      _ref.watch(bannerCreateProvider.select((value) => selector(value)));

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

class BannerCreateFormScope extends ConsumerStatefulWidget {
  const BannerCreateFormScope({
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
    BannerCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, BannerModel value)? onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BannerCreateFormScopeState();
}

class _BannerCreateFormScopeState extends ConsumerState<BannerCreateFormScope> {
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
    ref.listen(bannerCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _BannerCreateFormInheritedWidget(
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
                BannerCreateProxyWidgetRef(ref),
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

bool _debugCheckHasBannerCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! BannerCreateFormScope &&
        context.findAncestorWidgetOfExactType<BannerCreateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No BannerCreateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a BannerCreateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct BannerCreateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class BannerCreateFormSelect<Selected> extends ConsumerWidget {
  const BannerCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(BannerCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    BannerCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBannerCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(bannerCreateProvider.select((value) => selector(value)), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    final stateRef = BannerCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class BannerCreateFormState extends ConsumerWidget {
  const BannerCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(bannerCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    BannerCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(BannerCreateParam? previous, BannerCreateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBannerCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(bannerCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, BannerCreateProxyWidgetRef(ref), child);
  }
}

class BannerCreateFormStatus extends ConsumerWidget {
  const BannerCreateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    BannerCreateProxyWidgetRef ref,
    AsyncValue<BannerModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<BannerModel>? previous,
    AsyncValue<BannerModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBannerCreateForm(context);

    if (onChanged != null) {
      ref.listen(bannerCreateCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = BannerCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class BannerCreateNoteProxyWidgetRef extends BannerCreateProxyWidgetRef {
  BannerCreateNoteProxyWidgetRef(super._ref, {required this.textController});

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get note => select((state) => state.note);

  /// Update the field value directly.
  void updateNote(String? newValue) => notifier.updateNote(newValue);
}

class BannerCreateNoteField extends HookConsumerWidget {
  const BannerCreateNoteField({
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
    BannerCreateNoteProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBannerCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(bannerCreateProvider).note;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(bannerCreateProvider.select((value) => value.note), (
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
        final currentValue = ref.read(bannerCreateProvider).note;
        if (currentValue != controller.text) {
          ref.read(bannerCreateProvider.notifier).updateNote(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = BannerCreateNoteProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class BannerCreateImagePathProxyWidgetRef extends BannerCreateProxyWidgetRef {
  BannerCreateImagePathProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ImageObject get imagePath => select((state) => state.imagePath);

  /// Update the field value directly.
  void updateImagePath(ImageObject newValue) =>
      notifier.updateImagePath(newValue);
}

class BannerCreateImagePathField extends ConsumerWidget {
  const BannerCreateImagePathField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BannerCreateImagePathProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBannerCreateForm(context);

    final proxy = BannerCreateImagePathProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BannerCreateIsActiveProxyWidgetRef extends BannerCreateProxyWidgetRef {
  BannerCreateIsActiveProxyWidgetRef(super._ref);

  /// Access the field value directly.
  bool get isActive => select((state) => state.isActive);

  /// Update the field value directly.
  void updateIsActive(bool newValue) => notifier.updateIsActive(newValue);
}

class BannerCreateIsActiveField extends ConsumerWidget {
  const BannerCreateIsActiveField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    BannerCreateIsActiveProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBannerCreateForm(context);

    final proxy = BannerCreateIsActiveProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class BannerCreateSkippableDurationSecondsProxyWidgetRef
    extends BannerCreateProxyWidgetRef {
  BannerCreateSkippableDurationSecondsProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int get skippableDurationSeconds =>
      select((state) => state.skippableDurationSeconds);

  /// Update the field value directly.
  void updateSkippableDurationSeconds(int newValue) =>
      notifier.updateSkippableDurationSeconds(newValue);
}

class BannerCreateSkippableDurationSecondsField extends ConsumerWidget {
  const BannerCreateSkippableDurationSecondsField({
    super.key,
    required this.builder,
  });

  final Widget Function(
    BuildContext context,
    BannerCreateSkippableDurationSecondsProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasBannerCreateForm(context);

    final proxy = BannerCreateSkippableDurationSecondsProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

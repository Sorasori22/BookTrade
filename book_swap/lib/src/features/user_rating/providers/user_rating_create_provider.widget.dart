// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/user_rating/providers/user_rating_create_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/user_rating/i_user_rating_repo.dart';
import 'package:book_swap/src/features/user_rating/user_rating_schema.schema.dart';
import 'package:book_swap/src/features/user_rating/providers/user_rating_list_pagination_provider.dart';
import 'package:book_swap/src/features/user_rating/providers/user_rating_list_provider.dart';
import 'dart:core';

class _UserRatingCreateFormInheritedWidget extends InheritedWidget {
  const _UserRatingCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _UserRatingCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _UserRatingCreateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _UserRatingCreateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey;
  }
}

class UserRatingCreateProxyWidgetRef extends WidgetRef {
  UserRatingCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<UserRatingModel>? get status =>
      _ref.watch(userRatingCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _UserRatingCreateFormInheritedWidget.of(context).formKey;

  UserRatingCreate get notifier => _ref.read(userRatingCreateProvider.notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<UserRatingModel>> submit() async {
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
    Selected Function(UserRatingCreateParam) selector,
  ) => _ref.watch(userRatingCreateProvider.select((value) => selector(value)));

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

class UserRatingCreateFormScope extends ConsumerStatefulWidget {
  const UserRatingCreateFormScope({
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
    UserRatingCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, UserRatingModel value)? onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UserRatingCreateFormScopeState();
}

class _UserRatingCreateFormScopeState
    extends ConsumerState<UserRatingCreateFormScope> {
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
    ref.listen(userRatingCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _UserRatingCreateFormInheritedWidget(
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
                UserRatingCreateProxyWidgetRef(ref),
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

bool _debugCheckHasUserRatingCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! UserRatingCreateFormScope &&
        context.findAncestorWidgetOfExactType<UserRatingCreateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No UserRatingCreateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a UserRatingCreateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct UserRatingCreateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class UserRatingCreateFormSelect<Selected> extends ConsumerWidget {
  const UserRatingCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(UserRatingCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    UserRatingCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(userRatingCreateProvider.select((value) => selector(value)), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    final stateRef = UserRatingCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class UserRatingCreateFormState extends ConsumerWidget {
  const UserRatingCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(userRatingCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    UserRatingCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    UserRatingCreateParam? previous,
    UserRatingCreateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(userRatingCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, UserRatingCreateProxyWidgetRef(ref), child);
  }
}

class UserRatingCreateFormStatus extends ConsumerWidget {
  const UserRatingCreateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    UserRatingCreateProxyWidgetRef ref,
    AsyncValue<UserRatingModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<UserRatingModel>? previous,
    AsyncValue<UserRatingModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingCreateForm(context);

    if (onChanged != null) {
      ref.listen(userRatingCreateCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = UserRatingCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class UserRatingCreateRaterIdProxyWidgetRef
    extends UserRatingCreateProxyWidgetRef {
  UserRatingCreateRaterIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get raterId => select((state) => state.raterId);

  /// Update the field value directly.
  void updateRaterId(ProfileId newValue) => notifier.updateRaterId(newValue);
}

class UserRatingCreateRaterIdField extends ConsumerWidget {
  const UserRatingCreateRaterIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    UserRatingCreateRaterIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingCreateForm(context);

    final proxy = UserRatingCreateRaterIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class UserRatingCreateRatedUserIdProxyWidgetRef
    extends UserRatingCreateProxyWidgetRef {
  UserRatingCreateRatedUserIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get ratedUserId => select((state) => state.ratedUserId);

  /// Update the field value directly.
  void updateRatedUserId(ProfileId newValue) =>
      notifier.updateRatedUserId(newValue);
}

class UserRatingCreateRatedUserIdField extends ConsumerWidget {
  const UserRatingCreateRatedUserIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    UserRatingCreateRatedUserIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingCreateForm(context);

    final proxy = UserRatingCreateRatedUserIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class UserRatingCreateTradeRequestIdProxyWidgetRef
    extends UserRatingCreateProxyWidgetRef {
  UserRatingCreateTradeRequestIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int? get tradeRequestId => select((state) => state.tradeRequestId);

  /// Update the field value directly.
  void updateTradeRequestId(int? newValue) =>
      notifier.updateTradeRequestId(newValue);
}

class UserRatingCreateTradeRequestIdField extends ConsumerWidget {
  const UserRatingCreateTradeRequestIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    UserRatingCreateTradeRequestIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingCreateForm(context);

    final proxy = UserRatingCreateTradeRequestIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class UserRatingCreateRatingProxyWidgetRef
    extends UserRatingCreateProxyWidgetRef {
  UserRatingCreateRatingProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int get rating => select((state) => state.rating);

  /// Update the field value directly.
  void updateRating(int newValue) => notifier.updateRating(newValue);
}

class UserRatingCreateRatingField extends ConsumerWidget {
  const UserRatingCreateRatingField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    UserRatingCreateRatingProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingCreateForm(context);

    final proxy = UserRatingCreateRatingProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class UserRatingCreateCommentProxyWidgetRef
    extends UserRatingCreateProxyWidgetRef {
  UserRatingCreateCommentProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String? get comment => select((state) => state.comment);

  /// Update the field value directly.
  void updateComment(String? newValue) => notifier.updateComment(newValue);
}

class UserRatingCreateCommentField extends HookConsumerWidget {
  const UserRatingCreateCommentField({
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
    UserRatingCreateCommentProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String? next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasUserRatingCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(userRatingCreateProvider).comment;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listenManual(
      userRatingCreateProvider.select((value) => value.comment),
      (previous, next) {
        if (previous != next && controller.text != next) {
          controller.text = next ?? "";
        }
        onChanged?.call(previous, next);
      },
    );

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
        final currentValue = ref.read(userRatingCreateProvider).comment;
        if (currentValue != controller.text) {
          ref
              .read(userRatingCreateProvider.notifier)
              .updateComment(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = UserRatingCreateCommentProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

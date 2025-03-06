// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/notification/providers/notification_create_provider.dart';
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
import 'package:book_swap/src/features/notification/i_notification_repo.dart';
import 'package:book_swap/src/features/notification/notification_schema.schema.dart';
import 'package:book_swap/src/features/notification/providers/notification_list_pagination_provider.dart';
import 'package:book_swap/src/features/notification/providers/notification_list_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension NotificationCreateFieldUpdater on NotificationCreate {
  /// Update the userId field of NotificationCreateParam class.
  void updateUserId(ProfileId newValue) =>
      state = state.copyWith(userId: newValue);

  /// Update the content field of NotificationCreateParam class.
  void updateContent(String newValue) =>
      state = state.copyWith(content: newValue);

  /// Update the relatedTradeId field of NotificationCreateParam class.
  void updateRelatedTradeId(int? newValue) =>
      state = state.copyWith(relatedTradeId: newValue);

  /// Update the notificationType field of NotificationCreateParam class.
  void updateNotificationType(String newValue) =>
      state = state.copyWith(notificationType: newValue);
}

class _NotificationCreateFormInheritedWidget extends InheritedWidget {
  const _NotificationCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _NotificationCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _NotificationCreateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _NotificationCreateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey;
  }
}

class NotificationCreateProxyWidgetRef extends WidgetRef {
  NotificationCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<NotificationModel>? get status =>
      _ref.watch(notificationCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _NotificationCreateFormInheritedWidget.of(context).formKey;

  NotificationCreate get notifier =>
      _ref.read(notificationCreateProvider.notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<NotificationModel>> submit() async {
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
    Selected Function(NotificationCreateParam) selector,
  ) =>
      _ref.watch(notificationCreateProvider.select((value) => selector(value)));

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

class NotificationCreateFormScope extends ConsumerStatefulWidget {
  const NotificationCreateFormScope({
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
    NotificationCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, NotificationModel value)?
  onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationCreateFormScopeState();
}

class _NotificationCreateFormScopeState
    extends ConsumerState<NotificationCreateFormScope> {
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
    ref.listen(notificationCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _NotificationCreateFormInheritedWidget(
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
                NotificationCreateProxyWidgetRef(ref),
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

bool _debugCheckHasNotificationCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! NotificationCreateFormScope &&
        context.findAncestorWidgetOfExactType<NotificationCreateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No NotificationCreateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a NotificationCreateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct NotificationCreateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class NotificationCreateFormSelect<Selected> extends ConsumerWidget {
  const NotificationCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(NotificationCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    NotificationCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(
        notificationCreateProvider.select((value) => selector(value)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = NotificationCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class NotificationCreateFormState extends ConsumerWidget {
  const NotificationCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(notificationCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    NotificationCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    NotificationCreateParam? previous,
    NotificationCreateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(notificationCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, NotificationCreateProxyWidgetRef(ref), child);
  }
}

class NotificationCreateFormStatus extends ConsumerWidget {
  const NotificationCreateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    NotificationCreateProxyWidgetRef ref,
    AsyncValue<NotificationModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<NotificationModel>? previous,
    AsyncValue<NotificationModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationCreateForm(context);

    if (onChanged != null) {
      ref.listen(notificationCreateCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = NotificationCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class NotificationCreateUserIdProxyWidgetRef
    extends NotificationCreateProxyWidgetRef {
  NotificationCreateUserIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get userId => select((state) => state.userId);

  /// Update the field value directly.
  void updateUserId(ProfileId newValue) => notifier.updateUserId(newValue);
}

class NotificationCreateUserIdField extends ConsumerWidget {
  const NotificationCreateUserIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    NotificationCreateUserIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationCreateForm(context);

    final proxy = NotificationCreateUserIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class NotificationCreateContentProxyWidgetRef
    extends NotificationCreateProxyWidgetRef {
  NotificationCreateContentProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get content => select((state) => state.content);

  /// Update the field value directly.
  void updateContent(String newValue) => notifier.updateContent(newValue);
}

class NotificationCreateContentField extends HookConsumerWidget {
  const NotificationCreateContentField({
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
    NotificationCreateContentProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(notificationCreateProvider).content;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(notificationCreateProvider.select((value) => value.content), (
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
        final currentValue = ref.read(notificationCreateProvider).content;
        if (currentValue != controller.text) {
          ref
              .read(notificationCreateProvider.notifier)
              .updateContent(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = NotificationCreateContentProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class NotificationCreateRelatedTradeIdProxyWidgetRef
    extends NotificationCreateProxyWidgetRef {
  NotificationCreateRelatedTradeIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int? get relatedTradeId => select((state) => state.relatedTradeId);

  /// Update the field value directly.
  void updateRelatedTradeId(int? newValue) =>
      notifier.updateRelatedTradeId(newValue);
}

class NotificationCreateRelatedTradeIdField extends ConsumerWidget {
  const NotificationCreateRelatedTradeIdField({
    super.key,
    required this.builder,
  });

  final Widget Function(
    BuildContext context,
    NotificationCreateRelatedTradeIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationCreateForm(context);

    final proxy = NotificationCreateRelatedTradeIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class NotificationCreateNotificationTypeProxyWidgetRef
    extends NotificationCreateProxyWidgetRef {
  NotificationCreateNotificationTypeProxyWidgetRef(
    super._ref, {
    required this.textController,
  });

  /// Text controller for the field. This is automatically created by the form widget and handles cleanup automatically.
  final TextEditingController textController;

  /// Access the field value directly.
  String get notificationType => select((state) => state.notificationType);

  /// Update the field value directly.
  void updateNotificationType(String newValue) =>
      notifier.updateNotificationType(newValue);
}

class NotificationCreateNotificationTypeField extends HookConsumerWidget {
  const NotificationCreateNotificationTypeField({
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
    NotificationCreateNotificationTypeProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(notificationCreateProvider).notificationType;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(
      notificationCreateProvider.select((value) => value.notificationType),
      (previous, next) {
        if (previous != next && controller.text != next) {
          controller.text = next;
        }
        onChanged?.call(previous, next);
      },
    );

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
        final currentValue =
            ref.read(notificationCreateProvider).notificationType;
        if (currentValue != controller.text) {
          ref
              .read(notificationCreateProvider.notifier)
              .updateNotificationType(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = NotificationCreateNotificationTypeProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

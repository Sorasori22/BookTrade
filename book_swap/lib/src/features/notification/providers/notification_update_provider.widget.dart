// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark
// coverage:ignore-file

import 'package:book_swap/src/features/notification/providers/notification_update_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kimapp_utils/kimapp_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';
import 'package:book_swap/src/features/notification/i_notification_repo.dart';
import 'package:book_swap/src/features/notification/notification_schema.schema.dart';
import 'package:book_swap/src/features/notification/providers/notification_detail_provider.dart';
import 'package:book_swap/src/features/notification/providers/notification_list_pagination_provider.dart';
import 'package:book_swap/src/features/notification/providers/notification_list_provider.dart';
import 'dart:core';

class _NotificationUpdateFormInheritedWidget extends InheritedWidget {
  const _NotificationUpdateFormInheritedWidget({
    required this.formKey,
    required this.params,
    required super.child,
  });

  final GlobalKey<FormState> formKey;
  final ({NotificationId notificationId}) params;

  static _NotificationUpdateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _NotificationUpdateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _NotificationUpdateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey && params != oldWidget.params;
  }
}

class NotificationUpdateProxyWidgetRef extends WidgetRef {
  NotificationUpdateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  ({NotificationId notificationId}) get params =>
      _NotificationUpdateFormInheritedWidget.of(context).params;

  AsyncValue<NotificationModel>? get status => _ref.watch(
    notificationUpdateCallStatusProvider((
      notificationId: params.notificationId,
    )),
  );

  GlobalKey<FormState> get formKey =>
      _NotificationUpdateFormInheritedWidget.of(context).formKey;

  NotificationUpdate get notifier =>
      _ref.read(notificationUpdateProvider(params.notificationId).notifier);

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

  NotificationUpdateParam get state =>
      _ref
          .watch(notificationUpdateProvider(params.notificationId))
          .requireValue;

  Selected select<Selected>(
    Selected Function(NotificationUpdateParam) selector,
  ) => _ref.watch(
    notificationUpdateProvider(
      params.notificationId,
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

class NotificationUpdateFormScope extends ConsumerStatefulWidget {
  const NotificationUpdateFormScope({
    super.key,
    required this.notificationId,
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
  final NotificationId notificationId;
  final Widget Function(
    BuildContext context,
    NotificationUpdateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, NotificationModel value)?
  onSuccessed;
  final Widget Function()? onInitLoading;
  final Widget Function(Object error, StackTrace stack)? onInitError;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _NotificationUpdateFormScopeState();
}

class _NotificationUpdateFormScopeState
    extends ConsumerState<NotificationUpdateFormScope> {
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
      notificationUpdateCallStatusProvider((
        notificationId: widget.notificationId,
      )),
      (previous, next) {
        if (previous?.hasValue == false && next?.hasValue == true) {
          widget.onSuccessed?.call(context, next!.requireValue);
        }
      },
    );

    return _NotificationUpdateFormInheritedWidget(
      formKey: _cachedFormKey,
      params: (notificationId: widget.notificationId),
      child: Form(
        key: _cachedFormKey,
        autovalidateMode: widget.autovalidateMode,
        onPopInvokedWithResult: widget.onPopInvokedWithResult,
        child: Consumer(
          builder: (context, ref, child) {
            final isInitializedAsync = ref.watch(
              notificationUpdateProvider(
                widget.notificationId,
              ).select((_) => _.whenData((_) => true)),
            );

            return isInitializedAsync.when(
              data: (_) {
                if (widget.builder != null) {
                  return widget.builder!(
                    context,
                    NotificationUpdateProxyWidgetRef(ref),
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

bool _debugCheckHasNotificationUpdateForm(BuildContext context) {
  assert(() {
    if (context.widget is! NotificationUpdateFormScope &&
        context.findAncestorWidgetOfExactType<NotificationUpdateFormScope>() ==
            null) {
      throw FlutterError.fromParts(<DiagnosticsNode>[
        ErrorSummary('No NotificationUpdateFormScope found'),
        ErrorDescription(
          '${context.widget.runtimeType} widgets require a NotificationUpdateFormScope widget ancestor.',
        ),
      ]);
    }
    return true;
  }());
  return true;
}

class NotificationUpdateFormParams extends ConsumerWidget {
  const NotificationUpdateFormParams({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    NotificationUpdateProxyWidgetRef ref,
    ({NotificationId notificationId}) params,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationUpdateForm(context);

    final params = _NotificationUpdateFormInheritedWidget.of(context).params;
    return builder(context, NotificationUpdateProxyWidgetRef(ref), params);
  }
}

class NotificationUpdateFormSelect<Selected> extends ConsumerWidget {
  const NotificationUpdateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(NotificationUpdateParam state) selector;
  final Widget Function(
    BuildContext context,
    NotificationUpdateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationUpdateForm(context);

    if (onStateChanged != null) {
      final params = _NotificationUpdateFormInheritedWidget.of(context).params;
      ref.listen(
        notificationUpdateProvider(
          params.notificationId,
        ).select((value) => selector(value.requireValue)),
        (pre, next) {
          if (pre != next) onStateChanged!(pre, next);
        },
      );
    }
    final stateRef = NotificationUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class NotificationUpdateFormState extends ConsumerWidget {
  const NotificationUpdateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(notificationUpdateProvider(params.notificationId))
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    NotificationUpdateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(
    NotificationUpdateParam? previous,
    NotificationUpdateParam? next,
  )?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationUpdateForm(context);

    if (onStateChanged != null) {
      final params = _NotificationUpdateFormInheritedWidget.of(context).params;
      ref.listen(notificationUpdateProvider(params.notificationId), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre?.valueOrNull, next.valueOrNull);
      });
    }
    return NotificationUpdateFormParams(
      builder:
          (context, ref, params) =>
              builder(context, NotificationUpdateProxyWidgetRef(ref), child),
    );
  }
}

class NotificationUpdateFormStatus extends ConsumerWidget {
  const NotificationUpdateFormStatus({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    NotificationUpdateProxyWidgetRef ref,
    AsyncValue<NotificationModel>? status,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationUpdateForm(context);

    final stateRef = NotificationUpdateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class NotificationUpdateReadProxyWidgetRef
    extends NotificationUpdateProxyWidgetRef {
  NotificationUpdateReadProxyWidgetRef(super._ref);

  /// Access the field value directly.
  /// Note: Renamed to readState to avoid conflict with WidgetRef.read method.
  bool? get readState => select((state) => state.read);

  /// Update the field value directly.
  /// Note: Renamed to updateReadState following the naming convention of readState.
  void updateReadState(bool? newValue) => notifier.updateRead(newValue);
}

class NotificationUpdateReadField extends ConsumerWidget {
  const NotificationUpdateReadField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    NotificationUpdateReadProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasNotificationUpdateForm(context);

    final proxy = NotificationUpdateReadProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

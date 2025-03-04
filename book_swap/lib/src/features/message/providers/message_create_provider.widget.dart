// **************************************************************************
// GENERATED CODE - DO NOT MODIFY BY HAND
// **************************************************************************
// ignore_for_file: type=lint, duplicate_import, unnecessary_import, unused_import, unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark, invalid_use_of_visible_for_testing_member, invalid_use_of_protected_member
// coverage:ignore-file

import 'package:book_swap/src/features/message/providers/message_create_provider.dart';
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
import 'package:book_swap/src/features/message/i_message_repo.dart';
import 'package:book_swap/src/features/message/message_schema.schema.dart';
import 'package:book_swap/src/features/message/providers/message_list_pagination_provider.dart';
import 'package:book_swap/src/features/message/providers/message_list_provider.dart';
import 'dart:core';

/// Extension that adds field update methods to the form provider.
/// These methods allow updating individual fields that have copyWith support.
extension MessageCreateFieldUpdater on MessageCreate {
  /// Update the senderId field of MessageCreateParam class.
  void updateSenderId(ProfileId newValue) =>
      state = state.copyWith(senderId: newValue);

  /// Update the recipientId field of MessageCreateParam class.
  void updateRecipientId(ProfileId newValue) =>
      state = state.copyWith(recipientId: newValue);

  /// Update the content field of MessageCreateParam class.
  void updateContent(String newValue) =>
      state = state.copyWith(content: newValue);

  /// Update the tradeRequestId field of MessageCreateParam class.
  void updateTradeRequestId(int? newValue) =>
      state = state.copyWith(tradeRequestId: newValue);
}

class _MessageCreateFormInheritedWidget extends InheritedWidget {
  const _MessageCreateFormInheritedWidget({
    required this.formKey,
    required super.child,
  });

  final GlobalKey<FormState> formKey;

  static _MessageCreateFormInheritedWidget of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<
          _MessageCreateFormInheritedWidget
        >()!;
  }

  @override
  bool updateShouldNotify(
    covariant _MessageCreateFormInheritedWidget oldWidget,
  ) {
    return formKey != oldWidget.formKey;
  }
}

class MessageCreateProxyWidgetRef extends WidgetRef {
  MessageCreateProxyWidgetRef(this._ref);

  final WidgetRef _ref;

  AsyncValue<MessageModel>? get status =>
      _ref.watch(messageCreateCallStatusProvider);

  GlobalKey<FormState> get formKey =>
      _MessageCreateFormInheritedWidget.of(context).formKey;

  MessageCreate get notifier => _ref.read(messageCreateProvider.notifier);

  /// Submits the form. Internally this calls [notifier.submit] with the form key validated.
  Future<AsyncValue<MessageModel>> submit() async {
    if (!(formKey.currentState?.validate() ?? false)) {
      return AsyncValue.error(
        Exception('Form is not valid'),
        StackTrace.current,
      );
    }
    formKey.currentState?.save();

    return await notifier();
  }

  Selected select<Selected>(Selected Function(MessageCreateParam) selector) =>
      _ref.watch(messageCreateProvider.select((value) => selector(value)));

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

class MessageCreateFormScope extends ConsumerStatefulWidget {
  const MessageCreateFormScope({
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
    MessageCreateProxyWidgetRef ref,
    Widget? child,
  )?
  builder;
  final Widget? child;
  final GlobalKey<FormState>? formKey;
  final AutovalidateMode? autovalidateMode;
  final void Function(bool, Object?)? onPopInvokedWithResult;
  final void Function(BuildContext context, MessageModel value)? onSuccessed;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MessageCreateFormScopeState();
}

class _MessageCreateFormScopeState
    extends ConsumerState<MessageCreateFormScope> {
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
    ref.listen(messageCreateCallStatusProvider, (previous, next) {
      if (previous?.hasValue == false && next?.hasValue == true) {
        widget.onSuccessed?.call(context, next!.requireValue);
      }
    });

    return _MessageCreateFormInheritedWidget(
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
                MessageCreateProxyWidgetRef(ref),
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

bool _debugCheckHasMessageCreateForm(BuildContext context) {
  assert(() {
    if (context.widget is! MessageCreateFormScope &&
        context.findAncestorWidgetOfExactType<MessageCreateFormScope>() ==
            null) {
      // Check if we're in a navigation context (dialog or pushed screen)
      final isInNavigation = ModalRoute.of(context) != null;

      if (!isInNavigation) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('No MessageCreateFormScope found'),
          ErrorDescription(
            '${context.widget.runtimeType} widgets require a MessageCreateFormScope widget ancestor '
            'or to be used in a navigation context with proper state management.',
          ),
        ]);
      }
      // If in navigation context, we'll return true but log a warning
      debugPrint(
        'Widget ${context.widget.runtimeType} used in navigation without direct MessageCreateFormScope',
      );
    }
    return true;
  }());
  return true;
}

class MessageCreateFormSelect<Selected> extends ConsumerWidget {
  const MessageCreateFormSelect({
    super.key,
    required this.selector,
    required this.builder,
    this.onStateChanged,
  });

  final Selected Function(MessageCreateParam state) selector;
  final Widget Function(
    BuildContext context,
    MessageCreateProxyWidgetRef ref,
    Selected value,
  )
  builder;
  final void Function(Selected? previous, Selected? next)? onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(messageCreateProvider.select((value) => selector(value)), (
        pre,
        next,
      ) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    final stateRef = MessageCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.select(selector));
  }
}

class MessageCreateFormState extends ConsumerWidget {
  const MessageCreateFormState({
    super.key,
    required this.builder,
    this.child,
    this.onStateChanged,
  });

  /// The builder function that constructs the widget tree.
  /// Access the state directly via ref.state, which is equivalent to ref.watch(messageCreateProvider)
  ///
  /// For selecting specific fields, use ref.select() - e.g. ref.select((value) => value.someField)
  /// The ref parameter provides type-safe access to the provider state and notifier
  final Widget Function(
    BuildContext context,
    MessageCreateProxyWidgetRef ref,
    Widget? child,
  )
  builder;
  final Widget? child;
  final void Function(MessageCreateParam? previous, MessageCreateParam? next)?
  onStateChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageCreateForm(context);

    if (onStateChanged != null) {
      ref.listen(messageCreateProvider, (pre, next) {
        if (pre != next) onStateChanged!(pre, next);
      });
    }
    return builder(context, MessageCreateProxyWidgetRef(ref), child);
  }
}

class MessageCreateFormStatus extends ConsumerWidget {
  const MessageCreateFormStatus({
    super.key,
    required this.builder,
    this.onChanged,
  });

  final Widget Function(
    BuildContext context,
    MessageCreateProxyWidgetRef ref,
    AsyncValue<MessageModel>? status,
  )
  builder;
  final void Function(
    AsyncValue<MessageModel>? previous,
    AsyncValue<MessageModel>? next,
  )?
  onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageCreateForm(context);

    if (onChanged != null) {
      ref.listen(messageCreateCallStatusProvider, (previous, next) {
        if (previous != next) {
          onChanged!(previous, next);
        }
      });
    }
    final stateRef = MessageCreateProxyWidgetRef(ref);
    return builder(context, stateRef, stateRef.status);
  }
}

class MessageCreateSenderIdProxyWidgetRef extends MessageCreateProxyWidgetRef {
  MessageCreateSenderIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get senderId => select((state) => state.senderId);

  /// Update the field value directly.
  void updateSenderId(ProfileId newValue) => notifier.updateSenderId(newValue);
}

class MessageCreateSenderIdField extends ConsumerWidget {
  const MessageCreateSenderIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    MessageCreateSenderIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageCreateForm(context);

    final proxy = MessageCreateSenderIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class MessageCreateRecipientIdProxyWidgetRef
    extends MessageCreateProxyWidgetRef {
  MessageCreateRecipientIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  ProfileId get recipientId => select((state) => state.recipientId);

  /// Update the field value directly.
  void updateRecipientId(ProfileId newValue) =>
      notifier.updateRecipientId(newValue);
}

class MessageCreateRecipientIdField extends ConsumerWidget {
  const MessageCreateRecipientIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    MessageCreateRecipientIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageCreateForm(context);

    final proxy = MessageCreateRecipientIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

class MessageCreateContentProxyWidgetRef extends MessageCreateProxyWidgetRef {
  MessageCreateContentProxyWidgetRef(
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

class MessageCreateContentField extends HookConsumerWidget {
  const MessageCreateContentField({
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
    MessageCreateContentProxyWidgetRef ref,
  )
  builder;

  /// Optional callback that will be called when the field value changes
  final void Function(String? previous, String next)? onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageCreateForm(context);

    // Using ref.read to get the initial value to avoid rebuilding the widget when the provider value changes
    final initialValue = ref.read(messageCreateProvider).content;

    final controller =
        textController ?? useTextEditingController(text: initialValue);

    // Listen for provider changes
    ref.listen(messageCreateProvider.select((value) => value.content), (
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
        final currentValue = ref.read(messageCreateProvider).content;
        if (currentValue != controller.text) {
          ref
              .read(messageCreateProvider.notifier)
              .updateContent(controller.text);
        }
      }

      controller.addListener(listener);
      return () => controller.removeListener(listener);
    }, [controller]);

    final proxy = MessageCreateContentProxyWidgetRef(
      ref,
      textController: controller,
    );

    return builder(context, proxy);
  }
}

class MessageCreateTradeRequestIdProxyWidgetRef
    extends MessageCreateProxyWidgetRef {
  MessageCreateTradeRequestIdProxyWidgetRef(super._ref);

  /// Access the field value directly.
  int? get tradeRequestId => select((state) => state.tradeRequestId);

  /// Update the field value directly.
  void updateTradeRequestId(int? newValue) =>
      notifier.updateTradeRequestId(newValue);
}

class MessageCreateTradeRequestIdField extends ConsumerWidget {
  const MessageCreateTradeRequestIdField({super.key, required this.builder});

  final Widget Function(
    BuildContext context,
    MessageCreateTradeRequestIdProxyWidgetRef ref,
  )
  builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _debugCheckHasMessageCreateForm(context);

    final proxy = MessageCreateTradeRequestIdProxyWidgetRef(ref);
    return builder(context, proxy);
  }
}

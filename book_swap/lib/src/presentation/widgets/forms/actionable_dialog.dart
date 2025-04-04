import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/dialogs/base_dialog.dart';
import 'package:book_swap/src/presentation/widgets/feedback/failure_widget.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:kimapp/kimapp.dart';

class ActionableDialog extends StatefulWidget {
  const ActionableDialog({
    super.key,
    this.icon,
    required this.title,
    required this.onSubmit,
    required this.failure,
    required this.isProgressing,
    this.submitText,
    required this.child,
    this.saveButtonBuilder,
    this.appBarAction,
    this.showAppBarCloseButton = false,
    this.closeDialogMode = false,
    this.leftActionItem,
    this.width,
    this.height,
    this.isFlexibleChild = true,
    this.backgroundColor,
  });

  final Widget? icon;
  final Widget title;
  final String? submitText;
  final VoidCallback? onSubmit;
  final Failure? failure;
  final bool isProgressing;
  final Widget child;
  final Widget Function(VoidCallback? press, bool isProgressing)? saveButtonBuilder;
  final Widget? appBarAction;
  final bool showAppBarCloseButton;
  final bool closeDialogMode;
  final Widget? leftActionItem;
  final double? width;
  final double? height;
  final bool isFlexibleChild;
  final Color? backgroundColor;

  @override
  State<ActionableDialog> createState() => _ActionableDialogState();
}

class _ActionableDialogState extends State<ActionableDialog> {
  @override
  void didUpdateWidget(covariant ActionableDialog oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.isProgressing == false && widget.isProgressing == true) {
      BotToast.showLoading();
    }

    if (oldWidget.isProgressing == true && widget.isProgressing == false) {
      BotToast.closeAllLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    final expandedActionItem = widget.closeDialogMode == false;

    return BaseDialog(
      showCloseButton: false,
      backgroundColor: widget.backgroundColor,
      width: widget.width,
      height: widget.height,
      title: Row(
        children: [
          if (widget.icon != null) ...[
            IconTheme(data: context.theme.iconTheme.copyWith(size: 32), child: widget.icon!),
            AS.wGap8,
          ],
          Expanded(child: widget.title),
          if (widget.appBarAction != null) widget.appBarAction!,
        ],
      ),
      actions: [
        if (widget.leftActionItem != null) ...[widget.leftActionItem!, const Spacer()],
        if (widget.closeDialogMode == false) ...[
          AppButton(
            variant: AppButtonVariant.neutral,
            onPressed: widget.isProgressing ? null : context.maybePop,
            label: "Cancel",
          ),
          if (!expandedActionItem) AS.wGap12,
        ],
        widget.saveButtonBuilder != null
            ? widget.saveButtonBuilder!(widget.onSubmit, widget.isProgressing)
            : AppButton(
                busy: widget.isProgressing,
                onPressed: widget.onSubmit,
                label: widget.submitText ?? "Save",
              ),
      ],
      content: SizedBox(
        width: widget.width,
        height: widget.height,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.isFlexibleChild) Flexible(child: widget.child) else widget.child,
            AS.hGap8,
            SizedBox(
              width: double.infinity,
              child: FailureWidget(failure: widget.failure),
            ),
          ],
        ),
      ),
    );
  }
}

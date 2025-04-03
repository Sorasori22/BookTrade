import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/trade_request/providers/trade_request_update_status_provider.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:book_swap/src/presentation/widgets/feedback/app_snackbar.dart';
import 'package:book_swap/src/presentation/widgets/forms/actionable_form.dart';
import 'package:book_swap/src/presentation/widgets/typography/info_label_widget.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

import '../../../app/app_style.dart';

@RoutePage()
class TradeRequestRejectPage extends HookConsumerWidget {
  const TradeRequestRejectPage({
    super.key,
    @PathParam('tradeRequestId') required this.tradeRequestId,
  });

  final String tradeRequestId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tradeId = TradeRequestId.fromValue(tradeRequestId.toInt());
    final reasonController = useTextEditingController();
    final state = ref.watch(tradeRequestUpdateStatusProvider(tradeId));

    return Scaffold(
      appBar: AppBar(
        title: Text('Decline Swap'),
      ),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: ActionableForm(
          onSubmit: () async {
            final result = await ref.read(tradeRequestUpdateStatusProvider(tradeId).notifier).call(
                  status: TradeRequestStatus.rejected,
                  rejectReason: reasonController.text.trim(),
                );

            if (result.isSuccess) {
              if (context.mounted) {
                context.showInfoSnackbar('Swap declined successfully');
                context.maybePop();
              }
            }

            if (result.isFailure) {
              if (context.mounted) {
                context.showErrorSnackbar(result.failure!.message());
              }
            }
          },
          onCancel: () {
            context.maybePop();
          },
          failure: state.failure,
          isProgressing: state.isInProgress,
          submitLabel: 'Confirm',
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Are you sure you want to decline this swap?'),
              AS.hGap20,
              InfoLabel(
                label: 'Reason',
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: reasonController,
                    minLines: 5,
                    maxLines: 5,
                    decoration: InputDecoration(
                      hintText: 'Optional',
                      hintStyle: context.theme.textTheme.bodyMedium?.copyWith(color: Colors.grey),
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 200),
            ],
          ),
        ),
      ),
    );
  }
}

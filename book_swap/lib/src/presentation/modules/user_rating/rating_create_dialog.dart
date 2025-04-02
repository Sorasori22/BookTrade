import 'package:auto_route/auto_route.dart';
import 'package:autoverpod/autoverpod.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/core/helpers/provider_status_helper.dart';
import 'package:book_swap/src/features/profile/profile_schema.schema.dart';
import 'package:book_swap/src/features/trade_request/trade_request_schema.schema.dart';
import 'package:book_swap/src/features/user_rating/providers/user_rating_create_provider.widget.dart';
import 'package:book_swap/src/features/user_rating/user_rating_schema.schema.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

class RatingCreateDialog extends ConsumerWidget {
  const RatingCreateDialog({
    super.key,
    required this.ratedProfileId,
    this.tradeRequestId,
  });

  final ProfileId ratedProfileId;
  final TradeRequestId? tradeRequestId;

  static Future<UserRatingModel?> show(
    BuildContext context, {
    required ProfileId ratedProfileId,
    TradeRequestId? tradeRequestId,
  }) {
    return showDialog<UserRatingModel>(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return RatingCreateDialog(
          ratedProfileId: ratedProfileId,
          tradeRequestId: tradeRequestId,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UserRatingCreateFormScope(
      ratedProfileId: ratedProfileId,
      tradeRequestId: tradeRequestId,
      builder: (context, ref, child) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Rate Your Experience',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                UserRatingCreateRatingField(
                  builder: (context, ref) {
                    return RatingBar(
                      alignment: Alignment.center,
                      size: 48,
                      filledIcon: Icons.star,
                      emptyIcon: Icons.star_border,
                      onRatingChanged: (value) {
                        ref.updateRating(value.toInt());
                      },
                      initialRating: ref.rating.toDouble(),
                      maxRating: 5,
                    );
                  },
                ),
                const SizedBox(height: 24),
                UserRatingCreateCommentField(
                  builder: (context, ref) {
                    return TextField(
                      controller: ref.textController,
                      maxLines: 3,
                      decoration: InputDecoration(
                        hintText: 'Write your review here...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        filled: true,
                        fillColor: Colors.grey[50],
                      ),
                    );
                  },
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('Cancel'),
                    ),
                    const SizedBox(width: 12),
                    FilledButton(
                      onPressed: () async {
                        final result = await context.loadingWrapper(() async {
                          return await ref.submit();
                        });

                        if (result.isSuccess) {
                          BotToast.showText(text: 'Thank you for your review!');
                          if (context.mounted) {
                            context.maybePop(result.requireValue);
                          }
                        }

                        if (result.isError) {
                          BotToast.showText(text: result.toProviderStatus().failure!.message());
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

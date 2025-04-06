import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/provider_status_helper.dart';
import 'package:book_swap/src/features/book_rating/book_rating_schema.schema.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_update_provider.widget.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/widgets/forms/actionable_dialog.dart';
import 'package:book_swap/src/presentation/widgets/forms/app_text_field.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

class BookratingUpdateDialog extends ConsumerWidget {
  const BookratingUpdateDialog({
    super.key,
    required this.ratingId,
  });

  final BookRatingId ratingId;

  static void show(BuildContext context, BookRatingId ratingId) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return BookratingUpdateDialog(
          ratingId: ratingId,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BookRatingUpdateFormScope(
      bookRatingId: ratingId,
      onSuccessed: (context, value) {
        BotToast.showText(text: 'Review uploaded');
        if (context.mounted) {
          context.maybePop();
        }
      },
      builder: (context, ref, child) {
        final status = ref.status.toProviderStatus();
        return ActionableDialog(
          title: Text('Write a Review'),
          onSubmit: () async {
            await ref.submit();
          },
          failure: status.failure,
          isProgressing: status.isInProgress,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AS.hGap24,
              BookRatingUpdateRatingField(
                builder: (context, ref) {
                  return RatingBar(
                    alignment: Alignment.center,
                    size: 48,
                    filledIcon: FluentIcons.star_24_filled,
                    emptyIcon: FluentIcons.star_24_regular,
                    onRatingChanged: (value) {
                      ref.updateRating(value.toInt());
                    },
                    initialRating: ref.rating?.toDouble() ?? 5,
                    maxRating: 5,
                  );
                },
              ),
              AS.hGap24,
              BookRatingUpdateCommentField(
                builder: (context, ref) {
                  return AppTextField(
                    controller: ref.textController,
                    textCapitalization: TextCapitalization.sentences,
                    hintText: 'Review (optional)',
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

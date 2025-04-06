import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/provider_status_helper.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book_rating/providers/book_rating_create_provider.widget.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/widgets/forms/actionable_dialog.dart';
import 'package:book_swap/src/presentation/widgets/forms/app_text_field.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:kimapp/kimapp.dart';

class BookRatingCreateDialog extends ConsumerWidget {
  const BookRatingCreateDialog({
    super.key,
    required this.bookId,
  });

  final BookId bookId;

  static void show(
    BuildContext context, {
    required BookId bookId,
  }) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return BookRatingCreateDialog(bookId: bookId);
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BookRatingCreateFormScope(
      bookId: bookId,
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
              BookRatingCreateRatingField(
                builder: (context, ref) {
                  return RatingBar(
                    alignment: Alignment.center,
                    size: 48,
                    filledIcon: FluentIcons.star_24_filled,
                    emptyIcon: FluentIcons.star_24_regular,
                    onRatingChanged: (value) {
                      ref.updateRating(value.toInt());
                    },
                    initialRating: ref.rating.toDouble(),
                    maxRating: 5,
                  );
                },
              ),
              AS.hGap24,
              BookRatingCreateCommentField(
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

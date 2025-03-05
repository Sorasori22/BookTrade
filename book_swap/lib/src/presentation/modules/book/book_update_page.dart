import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book/providers/book_update_provider.widget.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_condition_field.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/components/form_status_widget.dart';
import 'package:book_swap/src/presentation/widgets/feedback/app_snackbar.dart';
import 'package:book_swap/src/presentation/widgets/forms/app_text_form_field.dart';
import 'package:book_swap/src/presentation/widgets/tools/image_picker_card.dart';
import 'package:book_swap/src/presentation/widgets/typography/info_label_widget.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../core/account/account.dart';

@RoutePage()
class BookUpdatePage extends HookConsumerWidget {
  const BookUpdatePage({
    super.key,
    @PathParam('bookId') required this.bookIdString,
  });

  final String bookIdString;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bookId = BookId.fromValue(bookIdString.toInt());
    final image = useState<XFile?>(null);

    return BookUpdateFormScope(
      bookId: bookId,
      onSuccessed: (context, value) {
        context.showSuccessSnackbar('Book updated successfully');
        Navigator.of(context).pop();
      },
      onInitLoading: () => const Center(child: CircularProgressIndicator()),
      onInitError: (error, stack) => Center(
        child: Text('Error: $error'),
      ),
      builder: (context, ref, child) {
        final currentProfileId = ref.watch(currentProfileIdProvider);
        final isOwner = currentProfileId == ref.select((state) => state.ownerId);
        if (!isOwner) {
          return const Center(child: Text('You are not the owner of this book'));
        }

        return Scaffold(
          appBar: AppBar(
            title: const Text('Update Book'),
          ),
          body: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BookUpdateTitleField(
                  builder: (context, ref) {
                    return InfoLabel(
                      label: 'Book Title',
                      child: AppTextFormField(
                        controller: ref.textController,
                        validator: FormBuilderValidators.required(),
                      ),
                    );
                  },
                ),
                AS.hGap16,
                BookUpdateAuthorField(
                  builder: (context, ref) {
                    return InfoLabel(
                      label: 'Book Author',
                      child: AppTextFormField(
                        controller: ref.textController,
                        validator: FormBuilderValidators.required(),
                      ),
                    );
                  },
                ),
                AS.hGap16,
                BookUpdateConditionField(
                  builder: (context, ref) => InfoLabel(
                    label: 'Condition',
                    child: BookConditionField(
                      value: ref.condition,
                      onChanged: (value) {
                        ref.updateCondition(value);
                      },
                    ),
                  ),
                ),
                AS.hGap16,
                BookUpdateDescriptionField(
                  builder: (context, ref) {
                    return InfoLabel(
                      label: 'Book Description',
                      child: AppTextFormField(
                        controller: ref.textController,
                        maxLines: null,
                        minLines: 3,
                        keyboardType: TextInputType.multiline,
                        textCapitalization: TextCapitalization.sentences,
                      ),
                    );
                  },
                ),
                AS.hGap16,
                BookUpdateImageField(
                  builder: (context, ref) {
                    return ImagePickerCard(
                      height: 300,
                      aspectRatio: AS.bookCoverAspectRatio,
                      imageFile: image.value,
                      onImageChanged: (value) {
                        image.value = value;
                      },
                      placeholder: Column(
                        children: [
                          Icon(
                            Icons.upload,
                            size: 38,
                            color: context.primaryColor,
                          ),
                          Text('Please upload your cover'),
                        ],
                      ),
                    );
                  },
                ),
                AS.hGap16,
                BookUpdateFormStatus(
                  builder: (context, ref, status) {
                    return FormStatusWidget(status: status);
                  },
                ),
                AS.hGap16,
                BookUpdateFormStatus(
                  builder: (context, ref, status) {
                    return AppButton(
                      onPressed: () async {
                        await ref.submit(image: image.value);
                      },
                      label: 'Update',
                      busy: status?.isLoading == true,
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

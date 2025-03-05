import 'package:book_swap/src/features/book/book_schema.schema.dart';
import 'package:book_swap/src/features/book/providers/book_update_provider.widget.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/widgets/forms/app_text_form_field.dart';
import 'package:book_swap/src/presentation/widgets/tools/image_picker_card.dart';
import 'package:book_swap/src/presentation/widgets/typography/info_label_widget.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BookUpdatePage extends HookConsumerWidget {
  const BookUpdatePage({
    super.key,
    required this.bookId,
  });

  final BookId bookId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BookUpdateFormScope(
      bookId: bookId,
      onSuccessed: (context, value) {
        Navigator.of(context).pop();
      },
      onInitLoading: () => const Center(child: CircularProgressIndicator()),
      onInitError: (error, stack) => Center(
        child: Text('Error: $error'),
      ),
      builder: (context, ref, child) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Update Book'),
            actions: [
              BookUpdateFormStatus(
                builder: (context, ref, status) {
                  return IconButton(
                    onPressed: status?.isLoading == true ? null : () => ref.submit(),
                    icon: status?.isLoading == true
                        ? const SizedBox.square(
                            dimension: 20,
                            child: CircularProgressIndicator(strokeWidth: 2),
                          )
                        : const Icon(Icons.save),
                  );
                },
              ),
            ],
          ),
          body: Form(
            key: ref.formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
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
                BookUpdateDescriptionField(
                  builder: (context, ref) {
                    return InfoLabel(
                      label: 'Book Description',
                      child: AppTextFormField(
                        controller: ref.textController,
                        maxLines: 3,
                      ),
                    );
                  },
                ),
                AS.hGap16,
                BookUpdateImageField(
                  builder: (context, ref) {
                    return ImagePickerCard(
                      onImageChanged: (value) {},
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

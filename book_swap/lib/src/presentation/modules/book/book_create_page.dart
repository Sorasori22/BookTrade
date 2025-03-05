import 'package:auto_route/auto_route.dart';
import 'package:book_swap/src/core/helpers/build_context_helper.dart';
import 'package:book_swap/src/presentation/app/app_style.dart';
import 'package:book_swap/src/presentation/modules/book/widget/book_condition_field.dart';
import 'package:book_swap/src/presentation/widgets/buttons/app_button.dart';
import 'package:book_swap/src/presentation/widgets/feedback/app_snackbar.dart';
import 'package:book_swap/src/presentation/widgets/forms/app_text_form_field.dart';
import 'package:book_swap/src/presentation/widgets/typography/info_label_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../features/book/providers/book_create_provider.widget.dart';
import '../../widgets/components/form_status_widget.dart';
import '../../widgets/tools/image_picker_card.dart';

@RoutePage()
class BookCreatePage extends HookConsumerWidget {
  const BookCreatePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final image = useState<XFile?>(null);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Book'),
      ),
      body: BookCreateFormScope(
        onSuccessed: (context, result) {
          context.showSuccessSnackbar('Book added successfully');
          Navigator.of(context).pop();
        },
        builder: (context, ref, child) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BookCreateTitleField(
                  builder: (context, ref) => InfoLabel(
                    label: 'Title',
                    child: AppTextFormField(
                      controller: ref.textController,
                      validator: FormBuilderValidators.required(),
                    ),
                  ),
                ),
                AS.hGap16,
                BookCreateAuthorField(
                  builder: (context, ref) => InfoLabel(
                    label: 'Author',
                    child: AppTextFormField(
                      controller: ref.textController,
                      validator: FormBuilderValidators.required(),
                    ),
                  ),
                ),
                AS.hGap16,
                BookCreateConditionField(
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
                BookCreateDescriptionField(
                  builder: (context, ref) => InfoLabel(
                    label: 'Description',
                    child: AppTextFormField(
                      controller: ref.textController,
                      maxLines: null,
                      minLines: 3,
                      keyboardType: TextInputType.multiline,
                      textCapitalization: TextCapitalization.sentences,
                    ),
                  ),
                ),
                AS.hGap16,
                BookCreateImageField(
                  builder: (context, ref) => ImagePickerCard(
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
                  ),
                ),
                AS.hGap16,
                BookCreateFormStatus(
                  builder: (context, ref, status) {
                    return FormStatusWidget(status: status);
                  },
                ),
                AS.hGap16,
                BookCreateFormStatus(
                  builder: (context, ref, status) {
                    return AppButton(
                      onPressed: () async {
                        await ref.submit(image: image.value);
                      },
                      label: 'Submit',
                      busy: status?.isLoading == true,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

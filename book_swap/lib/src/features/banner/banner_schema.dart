import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:kimapp/kimapp.dart';

@Schema(
  tableName: 'banners',
  className: 'Banner',
  baseModelName: 'BannerModel',
)
class BannerSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('BannerId');
  final note = Field<String?>('note');
  final imagePath = Field<ImageObject>('image_path');
  final isActive = Field<bool>('is_active');
  final skippableDurationSeconds = Field<int>('skippable_duration_seconds');

  @override
  List<Model> get models {
    return [
      Model('BannerCreateParam')
        ..addFields({
          'note': note,
          'imagePath': imagePath,
          'isActive': isActive,
          'skippableDurationSeconds': skippableDurationSeconds,
        }),
    ];
  }
}

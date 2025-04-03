import 'package:book_swap/src/core/storage/image_object.dart';
import 'package:kimapp/kimapp.dart';

@Schema(
  tableName: 'ads',
  className: 'Ads',
  baseModelName: 'AdsModel',
)
class AdsSchema extends KimappSchema {
  final id = Field.id<int>('id').generateAs('AdsId');
  final title = Field<String>('title');
  final description = Field<String>('description');
  final url = Field<String>('url');
  final imagePath = Field<ImageObject>('image_path');
  final buttonText = Field<String>('button_text');
  final active = Field<bool>('active');
  final createdAt = Field<DateTime>('created_at');
}

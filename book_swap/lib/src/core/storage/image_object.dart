import 'package:kimapp_supabase_helper/kimapp_supabase_helper.dart';

class ImageObject extends StorageObject {
  @override
  String get bucket => 'images';

  @override
  final String path;

  ImageObject({required this.path});

  factory ImageObject.fromJson(dynamic json) {
    return ImageObject(path: json as String);
  }
}

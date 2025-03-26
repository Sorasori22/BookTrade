import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_list_param.freezed.dart';

@freezed
sealed class BannerListParam with _$BannerListParam {
  const BannerListParam._();

  const factory BannerListParam({
    String? search,
  }) = _BannerListParam;
}
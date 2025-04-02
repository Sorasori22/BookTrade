import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_list_param.freezed.dart';

@freezed
sealed class ChatListParam with _$ChatListParam {
  const ChatListParam._();

  const factory ChatListParam({
    String? search,
  }) = _ChatListParam;
}
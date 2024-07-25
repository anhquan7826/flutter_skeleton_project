import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user.request.g.dart';

@JsonSerializable()
class GetUserRequest {
  GetUserRequest({required this.id});

  final String id;

  factory GetUserRequest.fromJson(Map<String, dynamic> json) =>
      _$GetUserRequestFromJson(json);

  Map<String, dynamic> toJson() => _$GetUserRequestToJson(this);
}

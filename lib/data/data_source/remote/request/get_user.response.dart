import 'package:flutter_skeleton_project/data/model/user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user.response.g.dart';

@JsonSerializable()
class GetUserResponse {
  GetUserResponse({required this.user});

  factory GetUserResponse.fromJson(Map<String, dynamic> json) =>
      _$GetUserResponseFromJson(json);

  final User user;

  Map<String, dynamic> toJson() => _$GetUserResponseToJson(this);
}

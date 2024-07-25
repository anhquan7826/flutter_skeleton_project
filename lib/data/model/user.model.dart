import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.model.g.dart';

@JsonSerializable()
class User {
  User({required this.id});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  
  final String id;

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
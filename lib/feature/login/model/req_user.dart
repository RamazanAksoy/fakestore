import 'package:json_annotation/json_annotation.dart';
part 'req_user.g.dart';

@JsonSerializable()
class ReqUser {
  final String? username;
  final String? password;

  ReqUser({this.username, this.password});

  factory ReqUser.fromJson(Map<String, dynamic> json) => _$ReqUserFromJson(json);
  Map<String, dynamic> toJson() => _$ReqUserToJson(this);
}

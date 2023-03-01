import 'package:fakestore/core/base/model/base_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'res_token.g.dart';

@JsonSerializable()
class ResToken extends BaseModel<ResToken> {
  final String? token;

  ResToken({this.token});

  factory ResToken.fromJson(Map<String, dynamic> json) => _$ResTokenFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ResTokenToJson(this);

  @override
  ResToken fromJson(Map<String, dynamic> json) {
    return ResToken.fromJson(json);
  }
}

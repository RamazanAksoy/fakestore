import '/core/base/model/base_model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';

@JsonSerializable()
class Post extends BaseModel<Post> {
  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  Post({this.userId, this.id, this.title, this.body});
  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$PostToJson(this);

  @override
  Post fromJson(Map<String, dynamic> json) {
    return Post.fromJson(json);
  }
}

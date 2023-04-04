// ignore_for_file: unnecessary_question_mark

abstract class BaseModel<T> {
  Map<String, dynamic?> toJson();
  T fromJson(Map<String, dynamic> json);
}

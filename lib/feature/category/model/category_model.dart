import 'package:json_annotation/json_annotation.dart';

import '../../../core/base/model/base_model.dart';
    part 'category_model.g.dart';


@JsonSerializable()
class ProductModel extends BaseModel<ProductModel> {
  final int? id;
  final String? title;
  final double? price;
  final String? description;
  final String? category;
  final String? image;
  final Rating? rating;
  
    ProductModel({this.id, this.title, this.price, this.description, this.category, this.image,this.rating});







  @override
  factory ProductModel.fromJson(Map<String, dynamic> json) => _$ProductModelFromJson(json);


  @override
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);

  @override
  ProductModel fromJson(Map<String, dynamic> json) {
    return ProductModel.fromJson(json);
  }
}


@JsonSerializable()
class Rating{
  final double? rate;
  final int? count;

  Rating({this.rate, this.count});

  @override
  factory Rating.fromJson(Map<String, dynamic> json) => _$RatingFromJson(json);

  Map<String, dynamic> toJson() => _$RatingToJson(this);

}

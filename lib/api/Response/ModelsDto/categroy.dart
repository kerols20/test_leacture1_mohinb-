import 'package:json_annotation/json_annotation.dart';

import '../../../domin/model/categroy.dart';

part 'categroy.g.dart';
@JsonSerializable()
class CategoryDto {
  @JsonKey(name: "_id")
  final String? Id;
  @JsonKey(name: "name")
  final String? name;
  @JsonKey(name: "slug")
  final String? slug;
  @JsonKey(name: "image")
  final String? image;

  CategoryDto ({
    this.Id,
    this.name,
    this.slug,
    this.image,
  });

  factory CategoryDto.fromJson(Map<String, dynamic> json) {
    return _$CategoryDtoFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CategoryDtoToJson(this);
  }
  Category toCategory(){
    return Category(
      Id: Id,
      name: name,
      slug: slug,
      image: image,
    );
  }
}
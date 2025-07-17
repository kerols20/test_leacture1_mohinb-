import 'package:json_annotation/json_annotation.dart';
import 'ModelsDto/mateData.dart';
import 'ModelsDto/product.dart';
part 'product_Response.g.dart';
@JsonSerializable()
class Product_Response {
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "metadata")
  final Metadata? metadata;
  @JsonKey(name: "data")
  final List<ProductDto>? data;
/// final List<Product>? data; from all this response you will get only the data
  /// in product not all response
  Product_Response ({
    this.results,
    this.metadata,
    this.data,
  });

  factory Product_Response.fromJson(Map<String, dynamic> json) {
    return _$Product_ResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$Product_ResponseToJson(this);
  }
}



import 'package:json_annotation/json_annotation.dart';
import 'package:test_laecture1_monib/api/Response/ModelsDto/brand.dart';

import 'ModelsDto/mateData.dart';
part 'Brands_Response.g.dart';
@JsonSerializable()
class BrandsResponse {
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "metadata")
  final Metadata? metadata;
  @JsonKey(name: "data")
  final List<BrandDto>? data;
  /// final List<Product>? data; from all this response you will get only the data
  /// in product not all response
  BrandsResponse ({
    this.results,
    this.metadata,
    this.data,
  });

  factory BrandsResponse.fromJson(Map<String, dynamic> json) {
    return _$BrandsResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$BrandsResponseToJson(this);
  }
}




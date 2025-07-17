import 'package:json_annotation/json_annotation.dart';
import 'package:test_laecture1_monib/api/Response/ModelsDto/categroy.dart';

import 'ModelsDto/mateData.dart';
part 'Categries_Response.g.dart';
@JsonSerializable()
class CategriesResponse {
  @JsonKey(name: "results")
  final int? results;
  @JsonKey(name: "metadata")
  final Metadata? metadata;
  @JsonKey(name: "data")
  final List<CategoryDto>? data;
  /// final List<Product>? data; from all this response you will get only the data
  /// in product not all response
  CategriesResponse ({
    this.results,
    this.metadata,
    this.data,
  });

  factory CategriesResponse.fromJson(Map<String, dynamic> json) {
    return _$CategriesResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CategriesResponseToJson(this);
  }
}




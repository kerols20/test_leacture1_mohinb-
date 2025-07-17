// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_Response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product_Response _$Product_ResponseFromJson(Map<String, dynamic> json) =>
    Product_Response(
      results: (json['results'] as num?)?.toInt(),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$Product_ResponseToJson(Product_Response instance) =>
    <String, dynamic>{
      'results': instance.results,
      'metadata': instance.metadata,
      'data': instance.data,
    };

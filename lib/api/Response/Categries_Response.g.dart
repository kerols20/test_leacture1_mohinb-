// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Categries_Response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategriesResponse _$CategriesResponseFromJson(Map<String, dynamic> json) =>
    CategriesResponse(
      results: (json['results'] as num?)?.toInt(),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategriesResponseToJson(CategriesResponse instance) =>
    <String, dynamic>{
      'results': instance.results,
      'metadata': instance.metadata,
      'data': instance.data,
    };

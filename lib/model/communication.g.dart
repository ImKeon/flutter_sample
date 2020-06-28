// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'communication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Communication _$CommunicationFromJson(Map<String, dynamic> json) {
  return Communication(
    json['title'] as String,
    json['subTitle'] as String,
    json['contents'] as String,
  );
}

Map<String, dynamic> _$CommunicationToJson(Communication instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subTitle': instance.subTitle,
      'contents': instance.contents,
    };
import 'package:json_annotation/json_annotation.dart';

part 'communication.g.dart';

@JsonSerializable()
class Communication {
  String title;
  String subTitle;
  String contents;

  Communication(this.title, this.subTitle, this.contents);

  factory Communication.fromJson(Map<String, dynamic> json) => _$CommunicationFromJson(json);

  Map<String, dynamic> toJson() => _$CommunicationToJson(this);
}


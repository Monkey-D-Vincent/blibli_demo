import 'package:common/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_titles_model.g.dart';

@JsonSerializable(converters: [SafeStringConverter()])
class HomeTitlesModel {
  final String? id;
  final String? name;
  final String? description;
  final String? bgPicture;
  final String? bgColor;
  final String? headerImage;
  final String? defaultAuthorId;
  final String? tagId;

  HomeTitlesModel({
    this.id = "",
    this.name = "",
    this.description = "",
    this.bgPicture = "",
    this.bgColor = "",
    this.headerImage = "",
    this.defaultAuthorId = "",
    this.tagId = "",
  });

  factory HomeTitlesModel.fromJson(Map<String, dynamic> json) =>
      _$HomeTitlesModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeTitlesModelToJson(this);
}

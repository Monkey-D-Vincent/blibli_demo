// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_titles_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeTitlesModel _$HomeTitlesModelFromJson(Map<String, dynamic> json) =>
    HomeTitlesModel(
      id: json['id'] == null
          ? ""
          : const SafeStringConverter().fromJson(json['id']),
      name: json['name'] == null
          ? ""
          : const SafeStringConverter().fromJson(json['name']),
      description: json['description'] == null
          ? ""
          : const SafeStringConverter().fromJson(json['description']),
      bgPicture: json['bgPicture'] == null
          ? ""
          : const SafeStringConverter().fromJson(json['bgPicture']),
      bgColor: json['bgColor'] == null
          ? ""
          : const SafeStringConverter().fromJson(json['bgColor']),
      headerImage: json['headerImage'] == null
          ? ""
          : const SafeStringConverter().fromJson(json['headerImage']),
      defaultAuthorId: json['defaultAuthorId'] == null
          ? ""
          : const SafeStringConverter().fromJson(json['defaultAuthorId']),
      tagId: json['tagId'] == null
          ? ""
          : const SafeStringConverter().fromJson(json['tagId']),
    );

Map<String, dynamic> _$HomeTitlesModelToJson(HomeTitlesModel instance) =>
    <String, dynamic>{
      'id': const SafeStringConverter().toJson(instance.id),
      'name': const SafeStringConverter().toJson(instance.name),
      'description': const SafeStringConverter().toJson(instance.description),
      'bgPicture': const SafeStringConverter().toJson(instance.bgPicture),
      'bgColor': const SafeStringConverter().toJson(instance.bgColor),
      'headerImage': const SafeStringConverter().toJson(instance.headerImage),
      'defaultAuthorId': const SafeStringConverter().toJson(
        instance.defaultAuthorId,
      ),
      'tagId': const SafeStringConverter().toJson(instance.tagId),
    };

// To parse this JSON data, do
//
//     final communityAttentionModel = communityAttentionModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'community_attention_model.g.dart';

@JsonSerializable()
class CommunityAttentionModel {
  @JsonKey(name: "itemList")
  List<CommunityAttentionModelItemList>? itemList;
  @JsonKey(name: "count")
  int? count;
  @JsonKey(name: "total")
  int? total;
  @JsonKey(name: "nextPageUrl")
  String? nextPageUrl;
  @JsonKey(name: "adExist")
  bool? adExist;

  CommunityAttentionModel({
    this.itemList,
    this.count,
    this.total,
    this.nextPageUrl,
    this.adExist,
  });

  factory CommunityAttentionModel.fromJson(Map<String, dynamic> json) => _$CommunityAttentionModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityAttentionModelToJson(this);
}

@JsonSerializable()
class CommunityAttentionModelItemList {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "data")
  PurpleData? data;
  @JsonKey(name: "trackingData")
  dynamic trackingData;
  @JsonKey(name: "tag")
  dynamic tag;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "adIndex")
  int? adIndex;

  CommunityAttentionModelItemList({
    this.type,
    this.data,
    this.trackingData,
    this.tag,
    this.id,
    this.adIndex,
  });

  factory CommunityAttentionModelItemList.fromJson(Map<String, dynamic> json) => _$CommunityAttentionModelItemListFromJson(json);

  Map<String, dynamic> toJson() => _$CommunityAttentionModelItemListToJson(this);
}

@JsonSerializable()
class PurpleData {
  @JsonKey(name: "dataType")
  String? dataType;
  @JsonKey(name: "header")
  PurpleHeader? header;
  @JsonKey(name: "itemList")
  List<DataItemList>? itemList;
  @JsonKey(name: "count")
  int? count;
  @JsonKey(name: "adTrack")
  dynamic adTrack;
  @JsonKey(name: "footer")
  dynamic footer;
  @JsonKey(name: "content")
  Content? content;

  PurpleData({
    this.dataType,
    this.header,
    this.itemList,
    this.count,
    this.adTrack,
    this.footer,
    this.content,
  });

  factory PurpleData.fromJson(Map<String, dynamic> json) => _$PurpleDataFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleDataToJson(this);
}

@JsonSerializable()
class Content {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "data")
  ContentData? data;
  @JsonKey(name: "trackingData")
  dynamic trackingData;
  @JsonKey(name: "tag")
  dynamic tag;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "adIndex")
  int? adIndex;

  Content({
    this.type,
    this.data,
    this.trackingData,
    this.tag,
    this.id,
    this.adIndex,
  });

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}

@JsonSerializable()
class ContentData {
  @JsonKey(name: "dataType")
  String? dataType;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "library")
  String? dataLibrary;
  @JsonKey(name: "tags")
  List<Tag>? tags;
  @JsonKey(name: "consumption")
  Consumption? consumption;
  @JsonKey(name: "resourceType")
  String? resourceType;
  @JsonKey(name: "uid")
  int? uid;
  @JsonKey(name: "createTime")
  int? createTime;
  @JsonKey(name: "updateTime")
  int? updateTime;
  @JsonKey(name: "collected")
  bool? collected;
  @JsonKey(name: "reallyCollected")
  bool? reallyCollected;
  @JsonKey(name: "owner")
  Owner? owner;
  @JsonKey(name: "cover")
  Cover? cover;
  @JsonKey(name: "selectedTime")
  dynamic selectedTime;
  @JsonKey(name: "checkStatus")
  String? checkStatus;
  @JsonKey(name: "area")
  String? area;
  @JsonKey(name: "city")
  String? city;
  @JsonKey(name: "longitude")
  double? longitude;
  @JsonKey(name: "latitude")
  double? latitude;
  @JsonKey(name: "ifMock")
  bool? ifMock;
  @JsonKey(name: "validateStatus")
  String? validateStatus;
  @JsonKey(name: "validateResult")
  String? validateResult;
  @JsonKey(name: "width")
  int? width;
  @JsonKey(name: "height")
  int? height;
  @JsonKey(name: "addWatermark")
  bool? addWatermark;
  @JsonKey(name: "recentOnceReply")
  RecentOnceReply? recentOnceReply;
  @JsonKey(name: "privateMessageActionUrl")
  dynamic privateMessageActionUrl;
  @JsonKey(name: "source")
  String? source;
  @JsonKey(name: "playUrl")
  String? playUrl;
  @JsonKey(name: "status")
  dynamic status;
  @JsonKey(name: "releaseTime")
  int? releaseTime;
  @JsonKey(name: "duration")
  int? duration;
  @JsonKey(name: "transId")
  dynamic transId;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "validateTaskId")
  String? validateTaskId;
  @JsonKey(name: "playUrlWatermark")
  String? playUrlWatermark;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "urls")
  List<String>? urls;
  @JsonKey(name: "urlsWithWatermark")
  List<String>? urlsWithWatermark;

  ContentData({
    this.dataType,
    this.id,
    this.title,
    this.description,
    this.dataLibrary,
    this.tags,
    this.consumption,
    this.resourceType,
    this.uid,
    this.createTime,
    this.updateTime,
    this.collected,
    this.reallyCollected,
    this.owner,
    this.cover,
    this.selectedTime,
    this.checkStatus,
    this.area,
    this.city,
    this.longitude,
    this.latitude,
    this.ifMock,
    this.validateStatus,
    this.validateResult,
    this.width,
    this.height,
    this.addWatermark,
    this.recentOnceReply,
    this.privateMessageActionUrl,
    this.source,
    this.playUrl,
    this.status,
    this.releaseTime,
    this.duration,
    this.transId,
    this.type,
    this.validateTaskId,
    this.playUrlWatermark,
    this.url,
    this.urls,
    this.urlsWithWatermark,
  });

  factory ContentData.fromJson(Map<String, dynamic> json) => _$ContentDataFromJson(json);

  Map<String, dynamic> toJson() => _$ContentDataToJson(this);
}

@JsonSerializable()
class Consumption {
  @JsonKey(name: "collectionCount")
  int? collectionCount;
  @JsonKey(name: "shareCount")
  int? shareCount;
  @JsonKey(name: "replyCount")
  int? replyCount;
  @JsonKey(name: "realCollectionCount")
  int? realCollectionCount;

  Consumption({
    this.collectionCount,
    this.shareCount,
    this.replyCount,
    this.realCollectionCount,
  });

  factory Consumption.fromJson(Map<String, dynamic> json) => _$ConsumptionFromJson(json);

  Map<String, dynamic> toJson() => _$ConsumptionToJson(this);
}

@JsonSerializable()
class Cover {
  @JsonKey(name: "feed")
  String? feed;
  @JsonKey(name: "detail")
  String? detail;
  @JsonKey(name: "blurred")
  dynamic blurred;
  @JsonKey(name: "sharing")
  dynamic sharing;
  @JsonKey(name: "homepage")
  dynamic homepage;

  Cover({
    this.feed,
    this.detail,
    this.blurred,
    this.sharing,
    this.homepage,
  });

  factory Cover.fromJson(Map<String, dynamic> json) => _$CoverFromJson(json);

  Map<String, dynamic> toJson() => _$CoverToJson(this);
}

@JsonSerializable()
class Owner {
  @JsonKey(name: "uid")
  int? uid;
  @JsonKey(name: "nickname")
  String? nickname;
  @JsonKey(name: "avatar")
  String? avatar;
  @JsonKey(name: "userType")
  String? userType;
  @JsonKey(name: "ifPgc")
  bool? ifPgc;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "area")
  dynamic area;
  @JsonKey(name: "gender")
  String? gender;
  @JsonKey(name: "registDate")
  int? registDate;
  @JsonKey(name: "releaseDate")
  int? releaseDate;
  @JsonKey(name: "cover")
  String? cover;
  @JsonKey(name: "actionUrl")
  String? actionUrl;
  @JsonKey(name: "followed")
  bool? followed;
  @JsonKey(name: "limitVideoOpen")
  bool? limitVideoOpen;
  @JsonKey(name: "library")
  String? ownerLibrary;
  @JsonKey(name: "birthday")
  int? birthday;
  @JsonKey(name: "country")
  String? country;
  @JsonKey(name: "city")
  String? city;
  @JsonKey(name: "university")
  String? university;
  @JsonKey(name: "job")
  String? job;
  @JsonKey(name: "expert")
  bool? expert;

  Owner({
    this.uid,
    this.nickname,
    this.avatar,
    this.userType,
    this.ifPgc,
    this.description,
    this.area,
    this.gender,
    this.registDate,
    this.releaseDate,
    this.cover,
    this.actionUrl,
    this.followed,
    this.limitVideoOpen,
    this.ownerLibrary,
    this.birthday,
    this.country,
    this.city,
    this.university,
    this.job,
    this.expert,
  });

  factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

  Map<String, dynamic> toJson() => _$OwnerToJson(this);
}

@JsonSerializable()
class RecentOnceReply {
  @JsonKey(name: "dataType")
  String? dataType;
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "nickname")
  String? nickname;
  @JsonKey(name: "actionUrl")
  String? actionUrl;
  @JsonKey(name: "contentType")
  dynamic contentType;

  RecentOnceReply({
    this.dataType,
    this.message,
    this.nickname,
    this.actionUrl,
    this.contentType,
  });

  factory RecentOnceReply.fromJson(Map<String, dynamic> json) => _$RecentOnceReplyFromJson(json);

  Map<String, dynamic> toJson() => _$RecentOnceReplyToJson(this);
}

@JsonSerializable()
class Tag {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "actionUrl")
  String? actionUrl;
  @JsonKey(name: "adTrack")
  dynamic adTrack;
  @JsonKey(name: "desc")
  String? desc;
  @JsonKey(name: "bgPicture")
  String? bgPicture;
  @JsonKey(name: "headerImage")
  String? headerImage;
  @JsonKey(name: "tagRecType")
  String? tagRecType;
  @JsonKey(name: "childTagList")
  dynamic childTagList;
  @JsonKey(name: "childTagIdList")
  dynamic childTagIdList;
  @JsonKey(name: "haveReward")
  bool? haveReward;
  @JsonKey(name: "ifNewest")
  bool? ifNewest;
  @JsonKey(name: "newestEndTime")
  int? newestEndTime;
  @JsonKey(name: "communityIndex")
  int? communityIndex;

  Tag({
    this.id,
    this.name,
    this.actionUrl,
    this.adTrack,
    this.desc,
    this.bgPicture,
    this.headerImage,
    this.tagRecType,
    this.childTagList,
    this.childTagIdList,
    this.haveReward,
    this.ifNewest,
    this.newestEndTime,
    this.communityIndex,
  });

  factory Tag.fromJson(Map<String, dynamic> json) => _$TagFromJson(json);

  Map<String, dynamic> toJson() => _$TagToJson(this);
}

@JsonSerializable()
class PurpleHeader {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "actionUrl")
  String? actionUrl;
  @JsonKey(name: "labelList")
  dynamic labelList;
  @JsonKey(name: "icon")
  String? icon;
  @JsonKey(name: "iconType")
  String? iconType;
  @JsonKey(name: "time")
  int? time;
  @JsonKey(name: "showHateVideo")
  bool? showHateVideo;
  @JsonKey(name: "followType")
  String? followType;
  @JsonKey(name: "tagId")
  int? tagId;
  @JsonKey(name: "tagName")
  dynamic tagName;
  @JsonKey(name: "issuerName")
  String? issuerName;
  @JsonKey(name: "topShow")
  bool? topShow;

  PurpleHeader({
    this.id,
    this.actionUrl,
    this.labelList,
    this.icon,
    this.iconType,
    this.time,
    this.showHateVideo,
    this.followType,
    this.tagId,
    this.tagName,
    this.issuerName,
    this.topShow,
  });

  factory PurpleHeader.fromJson(Map<String, dynamic> json) => _$PurpleHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleHeaderToJson(this);
}

@JsonSerializable()
class DataItemList {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "data")
  FluffyData? data;
  @JsonKey(name: "trackingData")
  dynamic trackingData;
  @JsonKey(name: "tag")
  dynamic tag;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "adIndex")
  int? adIndex;

  DataItemList({
    this.type,
    this.data,
    this.trackingData,
    this.tag,
    this.id,
    this.adIndex,
  });

  factory DataItemList.fromJson(Map<String, dynamic> json) => _$DataItemListFromJson(json);

  Map<String, dynamic> toJson() => _$DataItemListToJson(this);
}

@JsonSerializable()
class FluffyData {
  @JsonKey(name: "dataType")
  String? dataType;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "subTitle")
  String? subTitle;
  @JsonKey(name: "bgPicture")
  String? bgPicture;
  @JsonKey(name: "actionUrl")
  String? actionUrl;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "image")
  String? image;
  @JsonKey(name: "adTrack")
  List<dynamic>? adTrack;
  @JsonKey(name: "shade")
  bool? shade;
  @JsonKey(name: "label")
  Label? label;
  @JsonKey(name: "labelList")
  List<LabelList>? labelList;
  @JsonKey(name: "header")
  FluffyHeader? header;
  @JsonKey(name: "autoPlay")
  bool? autoPlay;

  FluffyData({
    this.dataType,
    this.title,
    this.subTitle,
    this.bgPicture,
    this.actionUrl,
    this.id,
    this.description,
    this.image,
    this.adTrack,
    this.shade,
    this.label,
    this.labelList,
    this.header,
    this.autoPlay,
  });

  factory FluffyData.fromJson(Map<String, dynamic> json) => _$FluffyDataFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyDataToJson(this);
}

@JsonSerializable()
class FluffyHeader {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "title")
  dynamic title;
  @JsonKey(name: "font")
  dynamic font;
  @JsonKey(name: "subTitle")
  dynamic subTitle;
  @JsonKey(name: "subTitleFont")
  dynamic subTitleFont;
  @JsonKey(name: "textAlign")
  String? textAlign;
  @JsonKey(name: "cover")
  dynamic cover;
  @JsonKey(name: "label")
  dynamic label;
  @JsonKey(name: "actionUrl")
  dynamic actionUrl;
  @JsonKey(name: "labelList")
  dynamic labelList;
  @JsonKey(name: "rightText")
  dynamic rightText;
  @JsonKey(name: "icon")
  dynamic icon;
  @JsonKey(name: "description")
  dynamic description;

  FluffyHeader({
    this.id,
    this.title,
    this.font,
    this.subTitle,
    this.subTitleFont,
    this.textAlign,
    this.cover,
    this.label,
    this.actionUrl,
    this.labelList,
    this.rightText,
    this.icon,
    this.description,
  });

  factory FluffyHeader.fromJson(Map<String, dynamic> json) => _$FluffyHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyHeaderToJson(this);
}

@JsonSerializable()
class Label {
  @JsonKey(name: "text")
  String? text;
  @JsonKey(name: "card")
  String? card;
  @JsonKey(name: "detail")
  dynamic detail;

  Label({
    this.text,
    this.card,
    this.detail,
  });

  factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);

  Map<String, dynamic> toJson() => _$LabelToJson(this);
}

@JsonSerializable()
class LabelList {
  @JsonKey(name: "text")
  String? text;
  @JsonKey(name: "actionUrl")
  dynamic actionUrl;

  LabelList({
    this.text,
    this.actionUrl,
  });

  factory LabelList.fromJson(Map<String, dynamic> json) => _$LabelListFromJson(json);

  Map<String, dynamic> toJson() => _$LabelListToJson(this);
}

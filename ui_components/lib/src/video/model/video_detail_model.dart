// To parse this JSON data, do
//
//     final videoDetailModel = videoDetailModelFromJson(jsonString);

import 'package:json_annotation/json_annotation.dart';

part 'video_detail_model.g.dart';

@JsonSerializable()
class VideoDetailModel {
  @JsonKey(name: "itemList")
  List<ItemList>? itemList;
  @JsonKey(name: "count")
  int? count;
  @JsonKey(name: "total")
  int? total;
  @JsonKey(name: "nextPageUrl")
  dynamic nextPageUrl;
  @JsonKey(name: "adExist")
  bool? adExist;

  VideoDetailModel({
    this.itemList,
    this.count,
    this.total,
    this.nextPageUrl,
    this.adExist,
  });

  factory VideoDetailModel.fromJson(Map<String, dynamic> json) => _$VideoDetailModelFromJson(json);

  Map<String, dynamic> toJson() => _$VideoDetailModelToJson(this);
}

@JsonSerializable()
class ItemList {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "data")
  Data? data;
  @JsonKey(name: "trackingData")
  dynamic trackingData;
  @JsonKey(name: "tag")
  dynamic tag;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "adIndex")
  int? adIndex;

  ItemList({
    this.type,
    this.data,
    this.trackingData,
    this.tag,
    this.id,
    this.adIndex,
  });

  factory ItemList.fromJson(Map<String, dynamic> json) => _$ItemListFromJson(json);

  Map<String, dynamic> toJson() => _$ItemListToJson(this);
}

@JsonSerializable()
class Data {
  @JsonKey(name: "dataType")
  String? dataType;
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "text")
  String? text;
  @JsonKey(name: "subTitle")
  dynamic subTitle;
  @JsonKey(name: "actionUrl")
  String? actionUrl;
  @JsonKey(name: "adTrack")
  List<dynamic>? adTrack;
  @JsonKey(name: "follow")
  dynamic follow;
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
  @JsonKey(name: "slogan")
  String? slogan;
  @JsonKey(name: "provider")
  Provider? provider;
  @JsonKey(name: "category")
  String? category;
  @JsonKey(name: "author")
  Author? author;
  @JsonKey(name: "cover")
  Cover? cover;
  @JsonKey(name: "playUrl")
  String? playUrl;
  @JsonKey(name: "thumbPlayUrl")
  String? thumbPlayUrl;
  @JsonKey(name: "duration")
  int? duration;
  @JsonKey(name: "webUrl")
  WebUrl? webUrl;
  @JsonKey(name: "releaseTime")
  int? releaseTime;
  @JsonKey(name: "playInfo")
  List<PlayInfo>? playInfo;
  @JsonKey(name: "campaign")
  dynamic campaign;
  @JsonKey(name: "waterMarks")
  dynamic waterMarks;
  @JsonKey(name: "ad")
  bool? ad;
  @JsonKey(name: "titlePgc")
  String? titlePgc;
  @JsonKey(name: "descriptionPgc")
  String? descriptionPgc;
  @JsonKey(name: "remark")
  String? remark;
  @JsonKey(name: "ifLimitVideo")
  bool? ifLimitVideo;
  @JsonKey(name: "searchWeight")
  int? searchWeight;
  @JsonKey(name: "brandWebsiteInfo")
  dynamic brandWebsiteInfo;
  @JsonKey(name: "videoPosterBean")
  VideoPosterBean? videoPosterBean;
  @JsonKey(name: "idx")
  int? idx;
  @JsonKey(name: "shareAdTrack")
  dynamic shareAdTrack;
  @JsonKey(name: "favoriteAdTrack")
  dynamic favoriteAdTrack;
  @JsonKey(name: "webAdTrack")
  dynamic webAdTrack;
  @JsonKey(name: "date")
  int? date;
  @JsonKey(name: "promotion")
  dynamic promotion;
  @JsonKey(name: "label")
  dynamic label;
  @JsonKey(name: "labelList")
  List<dynamic>? labelList;
  @JsonKey(name: "descriptionEditor")
  String? descriptionEditor;
  @JsonKey(name: "collected")
  bool? collected;
  @JsonKey(name: "reallyCollected")
  bool? reallyCollected;
  @JsonKey(name: "played")
  bool? played;
  @JsonKey(name: "subtitles")
  List<dynamic>? subtitles;
  @JsonKey(name: "lastViewTime")
  dynamic lastViewTime;
  @JsonKey(name: "playlists")
  dynamic playlists;
  @JsonKey(name: "src")
  dynamic src;
  @JsonKey(name: "recallSource")
  dynamic recallSource;
  @JsonKey(name: "recall_source")
  dynamic dataRecallSource;

  Data({
    this.dataType,
    this.id,
    this.type,
    this.text,
    this.subTitle,
    this.actionUrl,
    this.adTrack,
    this.follow,
    this.title,
    this.description,
    this.dataLibrary,
    this.tags,
    this.consumption,
    this.resourceType,
    this.slogan,
    this.provider,
    this.category,
    this.author,
    this.cover,
    this.playUrl,
    this.thumbPlayUrl,
    this.duration,
    this.webUrl,
    this.releaseTime,
    this.playInfo,
    this.campaign,
    this.waterMarks,
    this.ad,
    this.titlePgc,
    this.descriptionPgc,
    this.remark,
    this.ifLimitVideo,
    this.searchWeight,
    this.brandWebsiteInfo,
    this.videoPosterBean,
    this.idx,
    this.shareAdTrack,
    this.favoriteAdTrack,
    this.webAdTrack,
    this.date,
    this.promotion,
    this.label,
    this.labelList,
    this.descriptionEditor,
    this.collected,
    this.reallyCollected,
    this.played,
    this.subtitles,
    this.lastViewTime,
    this.playlists,
    this.src,
    this.recallSource,
    this.dataRecallSource,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}

@JsonSerializable()
class Author {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "icon")
  String? icon;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "latestReleaseTime")
  int? latestReleaseTime;
  @JsonKey(name: "videoNum")
  int? videoNum;
  @JsonKey(name: "adTrack")
  dynamic adTrack;
  @JsonKey(name: "follow")
  Follow? follow;
  @JsonKey(name: "shield")
  Shield? shield;
  @JsonKey(name: "approvedNotReadyVideoCount")
  int? approvedNotReadyVideoCount;
  @JsonKey(name: "ifPgc")
  bool? ifPgc;
  @JsonKey(name: "recSort")
  int? recSort;
  @JsonKey(name: "expert")
  bool? expert;

  Author({
    this.id,
    this.icon,
    this.name,
    this.description,
    this.link,
    this.latestReleaseTime,
    this.videoNum,
    this.adTrack,
    this.follow,
    this.shield,
    this.approvedNotReadyVideoCount,
    this.ifPgc,
    this.recSort,
    this.expert,
  });

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorToJson(this);
}

@JsonSerializable()
class Follow {
  @JsonKey(name: "itemType")
  String? itemType;
  @JsonKey(name: "itemId")
  int? itemId;
  @JsonKey(name: "followed")
  bool? followed;

  Follow({
    this.itemType,
    this.itemId,
    this.followed,
  });

  factory Follow.fromJson(Map<String, dynamic> json) => _$FollowFromJson(json);

  Map<String, dynamic> toJson() => _$FollowToJson(this);
}

@JsonSerializable()
class Shield {
  @JsonKey(name: "itemType")
  String? itemType;
  @JsonKey(name: "itemId")
  int? itemId;
  @JsonKey(name: "shielded")
  bool? shielded;

  Shield({
    this.itemType,
    this.itemId,
    this.shielded,
  });

  factory Shield.fromJson(Map<String, dynamic> json) => _$ShieldFromJson(json);

  Map<String, dynamic> toJson() => _$ShieldToJson(this);
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
  String? blurred;
  @JsonKey(name: "sharing")
  dynamic sharing;
  @JsonKey(name: "homepage")
  String? homepage;

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
class PlayInfo {
  @JsonKey(name: "height")
  int? height;
  @JsonKey(name: "width")
  int? width;
  @JsonKey(name: "urlList")
  List<UrlList>? urlList;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "url")
  String? url;

  PlayInfo({
    this.height,
    this.width,
    this.urlList,
    this.name,
    this.type,
    this.url,
  });

  factory PlayInfo.fromJson(Map<String, dynamic> json) => _$PlayInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PlayInfoToJson(this);
}

@JsonSerializable()
class UrlList {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "size")
  int? size;

  UrlList({
    this.name,
    this.url,
    this.size,
  });

  factory UrlList.fromJson(Map<String, dynamic> json) => _$UrlListFromJson(json);

  Map<String, dynamic> toJson() => _$UrlListToJson(this);
}

@JsonSerializable()
class Provider {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "alias")
  String? alias;
  @JsonKey(name: "icon")
  String? icon;

  Provider({
    this.name,
    this.alias,
    this.icon,
  });

  factory Provider.fromJson(Map<String, dynamic> json) => _$ProviderFromJson(json);

  Map<String, dynamic> toJson() => _$ProviderToJson(this);
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
  dynamic newestEndTime;
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
class VideoPosterBean {
  @JsonKey(name: "scale")
  double? scale;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "fileSizeStr")
  String? fileSizeStr;

  VideoPosterBean({
    this.scale,
    this.url,
    this.fileSizeStr,
  });

  factory VideoPosterBean.fromJson(Map<String, dynamic> json) => _$VideoPosterBeanFromJson(json);

  Map<String, dynamic> toJson() => _$VideoPosterBeanToJson(this);
}

@JsonSerializable()
class WebUrl {
  @JsonKey(name: "raw")
  String? raw;
  @JsonKey(name: "forWeibo")
  String? forWeibo;

  WebUrl({
    this.raw,
    this.forWeibo,
  });

  factory WebUrl.fromJson(Map<String, dynamic> json) => _$WebUrlFromJson(json);

  Map<String, dynamic> toJson() => _$WebUrlToJson(this);
}

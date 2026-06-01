import 'package:common/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'home_recommend_model.g.dart';

@JsonSerializable(converters: [SafeStringConverter()])
class HomeRecommendModel {
  @JsonKey(name: "itemList")
  List<HomeRecommendModelItemList>? itemList;
  @JsonKey(name: "count")
  String? count;
  @JsonKey(name: "total")
  String? total;
  @JsonKey(name: "nextPageUrl")
  String? nextPageUrl;
  @JsonKey(name: "adExist")
  bool? adExist;

  HomeRecommendModel({
    this.itemList,
    this.count,
    this.total,
    this.nextPageUrl,
    this.adExist,
  });

  factory HomeRecommendModel.fromJson(Map<String, dynamic> json) => _$HomeRecommendModelFromJson(json);

  Map<String, dynamic> toJson() => _$HomeRecommendModelToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class HomeRecommendModelItemList {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "data")
  PurpleData? data;
  @JsonKey(name: "trackingData")
  dynamic trackingData;
  @JsonKey(name: "tag")
  dynamic tag;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "adIndex")
  String? adIndex;

  HomeRecommendModelItemList({
    this.type,
    this.data,
    this.trackingData,
    this.tag,
    this.id,
    this.adIndex,
  });

  factory HomeRecommendModelItemList.fromJson(Map<String, dynamic> json) => _$HomeRecommendModelItemListFromJson(json);

  Map<String, dynamic> toJson() => _$HomeRecommendModelItemListToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class PurpleData {
  @JsonKey(name: "dataType")
  String? dataType;
  @JsonKey(name: "header")
  PurpleHeader? header;
  @JsonKey(name: "itemList")
  List<DataItemList>? itemList;
  @JsonKey(name: "count")
  String? count;
  @JsonKey(name: "adTrack")
  List<dynamic>? adTrack;
  @JsonKey(name: "footer")
  dynamic footer;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "text")
  String? text;
  @JsonKey(name: "subTitle")
  dynamic subTitle;
  @JsonKey(name: "actionUrl")
  String? actionUrl;
  @JsonKey(name: "follow")
  dynamic follow;
  @JsonKey(name: "content")
  PurpleContent? content;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "library")
  String? dataLibrary;
  @JsonKey(name: "tags")
  List<TentacledTag>? tags;
  @JsonKey(name: "consumption")
  Consumption? consumption;
  @JsonKey(name: "resourceType")
  String? resourceType;
  @JsonKey(name: "slogan")
  dynamic slogan;
  @JsonKey(name: "provider")
  Provider? provider;
  @JsonKey(name: "category")
  String? category;
  @JsonKey(name: "author")
  PurpleAuthor? author;
  @JsonKey(name: "cover")
  FluffyCover? cover;
  @JsonKey(name: "playUrl")
  String? playUrl;
  @JsonKey(name: "thumbPlayUrl")
  dynamic thumbPlayUrl;
  @JsonKey(name: "duration")
  String? duration;
  @JsonKey(name: "webUrl")
  PurpleWebUrl? webUrl;
  @JsonKey(name: "releaseTime")
  String? releaseTime;
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
  String? searchWeight;
  @JsonKey(name: "brandWebsiteInfo")
  dynamic brandWebsiteInfo;
  @JsonKey(name: "videoPosterBean")
  VideoPosterBean? videoPosterBean;
  @JsonKey(name: "idx")
  String? idx;
  @JsonKey(name: "shareAdTrack")
  dynamic shareAdTrack;
  @JsonKey(name: "favoriteAdTrack")
  dynamic favoriteAdTrack;
  @JsonKey(name: "webAdTrack")
  dynamic webAdTrack;
  @JsonKey(name: "date")
  String? date;
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
  String? src;
  @JsonKey(name: "recallSource")
  String? recallSource;
  @JsonKey(name: "recall_source")
  String? dataRecallSource;

  PurpleData({
    this.dataType,
    this.header,
    this.itemList,
    this.count,
    this.adTrack,
    this.footer,
    this.id,
    this.type,
    this.text,
    this.subTitle,
    this.actionUrl,
    this.follow,
    this.content,
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

  factory PurpleData.fromJson(Map<String, dynamic> json) => _$PurpleDataFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleDataToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class PurpleAuthor {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "icon")
  String? icon;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "latestReleaseTime")
  String? latestReleaseTime;
  @JsonKey(name: "videoNum")
  String? videoNum;
  @JsonKey(name: "adTrack")
  dynamic adTrack;
  @JsonKey(name: "follow")
  Follow? follow;
  @JsonKey(name: "shield")
  Shield? shield;
  @JsonKey(name: "approvedNotReadyVideoCount")
  String? approvedNotReadyVideoCount;
  @JsonKey(name: "ifPgc")
  bool? ifPgc;
  @JsonKey(name: "recSort")
  String? recSort;
  @JsonKey(name: "expert")
  bool? expert;

  PurpleAuthor({
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

  factory PurpleAuthor.fromJson(Map<String, dynamic> json) => _$PurpleAuthorFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleAuthorToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class Follow {
  @JsonKey(name: "itemType")
  String? itemType;
  @JsonKey(name: "itemId")
  String? itemId;
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

@JsonSerializable(converters: [SafeStringConverter()])
class Shield {
  @JsonKey(name: "itemType")
  String? itemType;
  @JsonKey(name: "itemId")
  String? itemId;
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

@JsonSerializable(converters: [SafeStringConverter()])
class Consumption {
  @JsonKey(name: "collectionCount")
  String? collectionCount;
  @JsonKey(name: "shareCount")
  String? shareCount;
  @JsonKey(name: "replyCount")
  String? replyCount;
  @JsonKey(name: "realCollectionCount")
  String? realCollectionCount;

  Consumption({
    this.collectionCount,
    this.shareCount,
    this.replyCount,
    this.realCollectionCount,
  });

  factory Consumption.fromJson(Map<String, dynamic> json) => _$ConsumptionFromJson(json);

  Map<String, dynamic> toJson() => _$ConsumptionToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class PurpleContent {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "data")
  FluffyData? data;
  @JsonKey(name: "trackingData")
  dynamic trackingData;
  @JsonKey(name: "tag")
  dynamic tag;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "adIndex")
  String? adIndex;

  PurpleContent({
    this.type,
    this.data,
    this.trackingData,
    this.tag,
    this.id,
    this.adIndex,
  });

  factory PurpleContent.fromJson(Map<String, dynamic> json) => _$PurpleContentFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleContentToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class FluffyData {
  @JsonKey(name: "dataType")
  String? dataType;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "library")
  String? dataLibrary;
  @JsonKey(name: "tags")
  List<PurpleTag>? tags;
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
  PurpleAuthor? author;
  @JsonKey(name: "cover")
  PurpleCover? cover;
  @JsonKey(name: "playUrl")
  String? playUrl;
  @JsonKey(name: "thumbPlayUrl")
  dynamic thumbPlayUrl;
  @JsonKey(name: "duration")
  String? duration;
  @JsonKey(name: "webUrl")
  PurpleWebUrl? webUrl;
  @JsonKey(name: "releaseTime")
  String? releaseTime;
  @JsonKey(name: "playInfo")
  List<PlayInfo>? playInfo;
  @JsonKey(name: "campaign")
  dynamic campaign;
  @JsonKey(name: "waterMarks")
  dynamic waterMarks;
  @JsonKey(name: "ad")
  bool? ad;
  @JsonKey(name: "adTrack")
  List<dynamic>? adTrack;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "titlePgc")
  String? titlePgc;
  @JsonKey(name: "descriptionPgc")
  String? descriptionPgc;
  @JsonKey(name: "remark")
  String? remark;
  @JsonKey(name: "ifLimitVideo")
  bool? ifLimitVideo;
  @JsonKey(name: "searchWeight")
  String? searchWeight;
  @JsonKey(name: "brandWebsiteInfo")
  dynamic brandWebsiteInfo;
  @JsonKey(name: "videoPosterBean")
  VideoPosterBean? videoPosterBean;
  @JsonKey(name: "idx")
  String? idx;
  @JsonKey(name: "shareAdTrack")
  dynamic shareAdTrack;
  @JsonKey(name: "favoriteAdTrack")
  dynamic favoriteAdTrack;
  @JsonKey(name: "webAdTrack")
  dynamic webAdTrack;
  @JsonKey(name: "date")
  String? date;
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
  String? src;
  @JsonKey(name: "recallSource")
  String? recallSource;
  @JsonKey(name: "recall_source")
  String? dataRecallSource;

  FluffyData({
    this.dataType,
    this.id,
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
    this.adTrack,
    this.type,
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

  factory FluffyData.fromJson(Map<String, dynamic> json) => _$FluffyDataFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyDataToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class PurpleCover {
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

  PurpleCover({
    this.feed,
    this.detail,
    this.blurred,
    this.sharing,
    this.homepage,
  });

  factory PurpleCover.fromJson(Map<String, dynamic> json) => _$PurpleCoverFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleCoverToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class PlayInfo {
  @JsonKey(name: "height")
  String? height;
  @JsonKey(name: "width")
  String? width;
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

@JsonSerializable(converters: [SafeStringConverter()])
class UrlList {
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "url")
  String? url;
  @JsonKey(name: "size")
  String? size;

  UrlList({
    this.name,
    this.url,
    this.size,
  });

  factory UrlList.fromJson(Map<String, dynamic> json) => _$UrlListFromJson(json);

  Map<String, dynamic> toJson() => _$UrlListToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
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

@JsonSerializable(converters: [SafeStringConverter()])
class PurpleTag {
  @JsonKey(name: "id")
  String? id;
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
  String? communityIndex;

  PurpleTag({
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

  factory PurpleTag.fromJson(Map<String, dynamic> json) => _$PurpleTagFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleTagToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
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

@JsonSerializable(converters: [SafeStringConverter()])
class PurpleWebUrl {
  @JsonKey(name: "raw")
  String? raw;
  @JsonKey(name: "forWeibo")
  String? forWeibo;

  PurpleWebUrl({
    this.raw,
    this.forWeibo,
  });

  factory PurpleWebUrl.fromJson(Map<String, dynamic> json) => _$PurpleWebUrlFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleWebUrlToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class FluffyCover {
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

  FluffyCover({
    this.feed,
    this.detail,
    this.blurred,
    this.sharing,
    this.homepage,
  });

  factory FluffyCover.fromJson(Map<String, dynamic> json) => _$FluffyCoverFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyCoverToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class PurpleHeader {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "font")
  String? font;
  @JsonKey(name: "subTitle")
  String? subTitle;
  @JsonKey(name: "subTitleFont")
  String? subTitleFont;
  @JsonKey(name: "textAlign")
  String? textAlign;
  @JsonKey(name: "cover")
  dynamic cover;
  @JsonKey(name: "label")
  dynamic label;
  @JsonKey(name: "actionUrl")
  String? actionUrl;
  @JsonKey(name: "labelList")
  dynamic labelList;
  @JsonKey(name: "rightText")
  String? rightText;
  @JsonKey(name: "icon")
  String? icon;
  @JsonKey(name: "iconType")
  String? iconType;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "time")
  String? time;
  @JsonKey(name: "showHateVideo")
  bool? showHateVideo;

  PurpleHeader({
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
    this.iconType,
    this.description,
    this.time,
    this.showHateVideo,
  });

  factory PurpleHeader.fromJson(Map<String, dynamic> json) => _$PurpleHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$PurpleHeaderToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class DataItemList {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "data")
  TentacledData? data;
  @JsonKey(name: "trackingData")
  dynamic trackingData;
  @JsonKey(name: "tag")
  dynamic tag;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "adIndex")
  String? adIndex;

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

@JsonSerializable(converters: [SafeStringConverter()])
class TentacledData {
  @JsonKey(name: "dataType")
  String? dataType;
  @JsonKey(name: "header")
  FluffyHeader? header;
  @JsonKey(name: "content")
  FluffyContent? content;
  @JsonKey(name: "adTrack")
  List<dynamic>? adTrack;

  TentacledData({
    this.dataType,
    this.header,
    this.content,
    this.adTrack,
  });

  factory TentacledData.fromJson(Map<String, dynamic> json) => _$TentacledDataFromJson(json);

  Map<String, dynamic> toJson() => _$TentacledDataToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class FluffyContent {
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "data")
  StickyData? data;
  @JsonKey(name: "trackingData")
  dynamic trackingData;
  @JsonKey(name: "tag")
  dynamic tag;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "adIndex")
  String? adIndex;

  FluffyContent({
    this.type,
    this.data,
    this.trackingData,
    this.tag,
    this.id,
    this.adIndex,
  });

  factory FluffyContent.fromJson(Map<String, dynamic> json) => _$FluffyContentFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyContentToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class StickyData {
  @JsonKey(name: "dataType")
  String? dataType;
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "library")
  String? dataLibrary;
  @JsonKey(name: "tags")
  List<FluffyTag>? tags;
  @JsonKey(name: "consumption")
  Consumption? consumption;
  @JsonKey(name: "resourceType")
  String? resourceType;
  @JsonKey(name: "slogan")
  dynamic slogan;
  @JsonKey(name: "provider")
  Provider? provider;
  @JsonKey(name: "category")
  String? category;
  @JsonKey(name: "author")
  FluffyAuthor? author;
  @JsonKey(name: "cover")
  TentacledCover? cover;
  @JsonKey(name: "playUrl")
  String? playUrl;
  @JsonKey(name: "thumbPlayUrl")
  dynamic thumbPlayUrl;
  @JsonKey(name: "duration")
  String? duration;
  @JsonKey(name: "webUrl")
  FluffyWebUrl? webUrl;
  @JsonKey(name: "releaseTime")
  String? releaseTime;
  @JsonKey(name: "playInfo")
  List<PlayInfo>? playInfo;
  @JsonKey(name: "campaign")
  dynamic campaign;
  @JsonKey(name: "waterMarks")
  dynamic waterMarks;
  @JsonKey(name: "ad")
  bool? ad;
  @JsonKey(name: "adTrack")
  List<dynamic>? adTrack;
  @JsonKey(name: "type")
  String? type;
  @JsonKey(name: "titlePgc")
  dynamic titlePgc;
  @JsonKey(name: "descriptionPgc")
  dynamic descriptionPgc;
  @JsonKey(name: "remark")
  dynamic remark;
  @JsonKey(name: "ifLimitVideo")
  bool? ifLimitVideo;
  @JsonKey(name: "searchWeight")
  String? searchWeight;
  @JsonKey(name: "brandWebsiteInfo")
  dynamic brandWebsiteInfo;
  @JsonKey(name: "videoPosterBean")
  VideoPosterBean? videoPosterBean;
  @JsonKey(name: "idx")
  String? idx;
  @JsonKey(name: "shareAdTrack")
  dynamic shareAdTrack;
  @JsonKey(name: "favoriteAdTrack")
  dynamic favoriteAdTrack;
  @JsonKey(name: "webAdTrack")
  dynamic webAdTrack;
  @JsonKey(name: "date")
  String? date;
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

  StickyData({
    this.dataType,
    this.id,
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
    this.adTrack,
    this.type,
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

  factory StickyData.fromJson(Map<String, dynamic> json) => _$StickyDataFromJson(json);

  Map<String, dynamic> toJson() => _$StickyDataToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class FluffyAuthor {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "icon")
  String? icon;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "link")
  String? link;
  @JsonKey(name: "latestReleaseTime")
  String? latestReleaseTime;
  @JsonKey(name: "videoNum")
  String? videoNum;
  @JsonKey(name: "adTrack")
  dynamic adTrack;
  @JsonKey(name: "follow")
  Follow? follow;
  @JsonKey(name: "shield")
  Shield? shield;
  @JsonKey(name: "approvedNotReadyVideoCount")
  String? approvedNotReadyVideoCount;
  @JsonKey(name: "ifPgc")
  bool? ifPgc;
  @JsonKey(name: "recSort")
  String? recSort;
  @JsonKey(name: "expert")
  bool? expert;

  FluffyAuthor({
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

  factory FluffyAuthor.fromJson(Map<String, dynamic> json) => _$FluffyAuthorFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyAuthorToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class TentacledCover {
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

  TentacledCover({
    this.feed,
    this.detail,
    this.blurred,
    this.sharing,
    this.homepage,
  });

  factory TentacledCover.fromJson(Map<String, dynamic> json) => _$TentacledCoverFromJson(json);

  Map<String, dynamic> toJson() => _$TentacledCoverToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class FluffyTag {
  @JsonKey(name: "id")
  String? id;
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
  String? communityIndex;

  FluffyTag({
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

  factory FluffyTag.fromJson(Map<String, dynamic> json) => _$FluffyTagFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyTagToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class FluffyWebUrl {
  @JsonKey(name: "raw")
  String? raw;
  @JsonKey(name: "forWeibo")
  String? forWeibo;

  FluffyWebUrl({
    this.raw,
    this.forWeibo,
  });

  factory FluffyWebUrl.fromJson(Map<String, dynamic> json) => _$FluffyWebUrlFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyWebUrlToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class FluffyHeader {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "title")
  String? title;
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
  String? actionUrl;
  @JsonKey(name: "labelList")
  dynamic labelList;
  @JsonKey(name: "rightText")
  dynamic rightText;
  @JsonKey(name: "icon")
  String? icon;
  @JsonKey(name: "iconType")
  String? iconType;
  @JsonKey(name: "description")
  dynamic description;
  @JsonKey(name: "time")
  String? time;
  @JsonKey(name: "showHateVideo")
  bool? showHateVideo;

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
    this.iconType,
    this.description,
    this.time,
    this.showHateVideo,
  });

  factory FluffyHeader.fromJson(Map<String, dynamic> json) => _$FluffyHeaderFromJson(json);

  Map<String, dynamic> toJson() => _$FluffyHeaderToJson(this);
}

@JsonSerializable(converters: [SafeStringConverter()])
class TentacledTag {
  @JsonKey(name: "id")
  String? id;
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
  String? communityIndex;

  TentacledTag({
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

  factory TentacledTag.fromJson(Map<String, dynamic> json) => _$TentacledTagFromJson(json);

  Map<String, dynamic> toJson() => _$TentacledTagToJson(this);
}

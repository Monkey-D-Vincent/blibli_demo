// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_daily_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDailyModel _$HomeDailyModelFromJson(Map<String, dynamic> json) =>
    HomeDailyModel(
      itemList: (json['itemList'] as List<dynamic>?)
          ?.map((e) => ItemList.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      nextPageUrl: json['nextPageUrl'] as String?,
      adExist: json['adExist'] as bool?,
    );

Map<String, dynamic> _$HomeDailyModelToJson(HomeDailyModel instance) =>
    <String, dynamic>{
      'itemList': instance.itemList,
      'count': instance.count,
      'total': instance.total,
      'nextPageUrl': instance.nextPageUrl,
      'adExist': instance.adExist,
    };

ItemList _$ItemListFromJson(Map<String, dynamic> json) => ItemList(
  type: json['type'] as String?,
  data: json['data'] == null
      ? null
      : ItemListData.fromJson(json['data'] as Map<String, dynamic>),
  trackingData: json['trackingData'],
  tag: json['tag'],
  id: (json['id'] as num?)?.toInt(),
  adIndex: (json['adIndex'] as num?)?.toInt(),
);

Map<String, dynamic> _$ItemListToJson(ItemList instance) => <String, dynamic>{
  'type': instance.type,
  'data': instance.data,
  'trackingData': instance.trackingData,
  'tag': instance.tag,
  'id': instance.id,
  'adIndex': instance.adIndex,
};

ItemListData _$ItemListDataFromJson(Map<String, dynamic> json) => ItemListData(
  dataType: json['dataType'] as String?,
  id: (json['id'] as num?)?.toInt(),
  type: json['type'] as String?,
  text: json['text'] as String?,
  subTitle: json['subTitle'],
  actionUrl: json['actionUrl'],
  adTrack: json['adTrack'] as List<dynamic>?,
  follow: json['follow'],
  header: json['header'] == null
      ? null
      : Header.fromJson(json['header'] as Map<String, dynamic>),
  content: json['content'] == null
      ? null
      : Content.fromJson(json['content'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ItemListDataToJson(ItemListData instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'id': instance.id,
      'type': instance.type,
      'text': instance.text,
      'subTitle': instance.subTitle,
      'actionUrl': instance.actionUrl,
      'adTrack': instance.adTrack,
      'follow': instance.follow,
      'header': instance.header,
      'content': instance.content,
    };

Content _$ContentFromJson(Map<String, dynamic> json) => Content(
  type: json['type'] as String?,
  data: json['data'] == null
      ? null
      : ContentData.fromJson(json['data'] as Map<String, dynamic>),
  trackingData: json['trackingData'],
  tag: json['tag'],
  id: (json['id'] as num?)?.toInt(),
  adIndex: (json['adIndex'] as num?)?.toInt(),
);

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
  'type': instance.type,
  'data': instance.data,
  'trackingData': instance.trackingData,
  'tag': instance.tag,
  'id': instance.id,
  'adIndex': instance.adIndex,
};

ContentData _$ContentDataFromJson(Map<String, dynamic> json) => ContentData(
  dataType: json['dataType'] as String?,
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  description: json['description'] as String?,
  dataLibrary: json['library'] as String?,
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
  consumption: json['consumption'] == null
      ? null
      : Consumption.fromJson(json['consumption'] as Map<String, dynamic>),
  resourceType: json['resourceType'] as String?,
  slogan: json['slogan'],
  provider: json['provider'] == null
      ? null
      : Provider.fromJson(json['provider'] as Map<String, dynamic>),
  category: json['category'] as String?,
  author: json['author'] == null
      ? null
      : Author.fromJson(json['author'] as Map<String, dynamic>),
  cover: json['cover'] == null
      ? null
      : Cover.fromJson(json['cover'] as Map<String, dynamic>),
  playUrl: json['playUrl'] as String?,
  thumbPlayUrl: json['thumbPlayUrl'],
  duration: (json['duration'] as num?)?.toInt(),
  webUrl: json['webUrl'] == null
      ? null
      : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>),
  releaseTime: (json['releaseTime'] as num?)?.toInt(),
  playInfo: (json['playInfo'] as List<dynamic>?)
      ?.map((e) => PlayInfo.fromJson(e as Map<String, dynamic>))
      .toList(),
  campaign: json['campaign'],
  waterMarks: json['waterMarks'],
  ad: json['ad'] as bool?,
  adTrack: json['adTrack'] as List<dynamic>?,
  type: json['type'] as String?,
  titlePgc: json['titlePgc'],
  descriptionPgc: json['descriptionPgc'],
  remark: json['remark'],
  ifLimitVideo: json['ifLimitVideo'] as bool?,
  searchWeight: (json['searchWeight'] as num?)?.toInt(),
  brandWebsiteInfo: json['brandWebsiteInfo'],
  videoPosterBean: json['videoPosterBean'] == null
      ? null
      : VideoPosterBean.fromJson(
          json['videoPosterBean'] as Map<String, dynamic>,
        ),
  idx: (json['idx'] as num?)?.toInt(),
  shareAdTrack: json['shareAdTrack'],
  favoriteAdTrack: json['favoriteAdTrack'],
  webAdTrack: json['webAdTrack'],
  date: (json['date'] as num?)?.toInt(),
  promotion: json['promotion'],
  label: json['label'],
  labelList: json['labelList'] as List<dynamic>?,
  descriptionEditor: json['descriptionEditor'] as String?,
  collected: json['collected'] as bool?,
  reallyCollected: json['reallyCollected'] as bool?,
  played: json['played'] as bool?,
  subtitles: json['subtitles'] as List<dynamic>?,
  lastViewTime: json['lastViewTime'],
  playlists: json['playlists'],
  src: json['src'],
  recallSource: json['recallSource'],
  dataRecallSource: json['recall_source'],
);

Map<String, dynamic> _$ContentDataToJson(ContentData instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'library': instance.dataLibrary,
      'tags': instance.tags,
      'consumption': instance.consumption,
      'resourceType': instance.resourceType,
      'slogan': instance.slogan,
      'provider': instance.provider,
      'category': instance.category,
      'author': instance.author,
      'cover': instance.cover,
      'playUrl': instance.playUrl,
      'thumbPlayUrl': instance.thumbPlayUrl,
      'duration': instance.duration,
      'webUrl': instance.webUrl,
      'releaseTime': instance.releaseTime,
      'playInfo': instance.playInfo,
      'campaign': instance.campaign,
      'waterMarks': instance.waterMarks,
      'ad': instance.ad,
      'adTrack': instance.adTrack,
      'type': instance.type,
      'titlePgc': instance.titlePgc,
      'descriptionPgc': instance.descriptionPgc,
      'remark': instance.remark,
      'ifLimitVideo': instance.ifLimitVideo,
      'searchWeight': instance.searchWeight,
      'brandWebsiteInfo': instance.brandWebsiteInfo,
      'videoPosterBean': instance.videoPosterBean,
      'idx': instance.idx,
      'shareAdTrack': instance.shareAdTrack,
      'favoriteAdTrack': instance.favoriteAdTrack,
      'webAdTrack': instance.webAdTrack,
      'date': instance.date,
      'promotion': instance.promotion,
      'label': instance.label,
      'labelList': instance.labelList,
      'descriptionEditor': instance.descriptionEditor,
      'collected': instance.collected,
      'reallyCollected': instance.reallyCollected,
      'played': instance.played,
      'subtitles': instance.subtitles,
      'lastViewTime': instance.lastViewTime,
      'playlists': instance.playlists,
      'src': instance.src,
      'recallSource': instance.recallSource,
      'recall_source': instance.dataRecallSource,
    };

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
  id: (json['id'] as num?)?.toInt(),
  icon: json['icon'] as String?,
  name: json['name'] as String?,
  description: json['description'] as String?,
  link: json['link'] as String?,
  latestReleaseTime: (json['latestReleaseTime'] as num?)?.toInt(),
  videoNum: (json['videoNum'] as num?)?.toInt(),
  adTrack: json['adTrack'],
  follow: json['follow'] == null
      ? null
      : Follow.fromJson(json['follow'] as Map<String, dynamic>),
  shield: json['shield'] == null
      ? null
      : Shield.fromJson(json['shield'] as Map<String, dynamic>),
  approvedNotReadyVideoCount: (json['approvedNotReadyVideoCount'] as num?)
      ?.toInt(),
  ifPgc: json['ifPgc'] as bool?,
  recSort: (json['recSort'] as num?)?.toInt(),
  expert: json['expert'] as bool?,
);

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
  'id': instance.id,
  'icon': instance.icon,
  'name': instance.name,
  'description': instance.description,
  'link': instance.link,
  'latestReleaseTime': instance.latestReleaseTime,
  'videoNum': instance.videoNum,
  'adTrack': instance.adTrack,
  'follow': instance.follow,
  'shield': instance.shield,
  'approvedNotReadyVideoCount': instance.approvedNotReadyVideoCount,
  'ifPgc': instance.ifPgc,
  'recSort': instance.recSort,
  'expert': instance.expert,
};

Follow _$FollowFromJson(Map<String, dynamic> json) => Follow(
  itemType: json['itemType'] as String?,
  itemId: (json['itemId'] as num?)?.toInt(),
  followed: json['followed'] as bool?,
);

Map<String, dynamic> _$FollowToJson(Follow instance) => <String, dynamic>{
  'itemType': instance.itemType,
  'itemId': instance.itemId,
  'followed': instance.followed,
};

Shield _$ShieldFromJson(Map<String, dynamic> json) => Shield(
  itemType: json['itemType'] as String?,
  itemId: (json['itemId'] as num?)?.toInt(),
  shielded: json['shielded'] as bool?,
);

Map<String, dynamic> _$ShieldToJson(Shield instance) => <String, dynamic>{
  'itemType': instance.itemType,
  'itemId': instance.itemId,
  'shielded': instance.shielded,
};

Consumption _$ConsumptionFromJson(Map<String, dynamic> json) => Consumption(
  collectionCount: (json['collectionCount'] as num?)?.toInt(),
  shareCount: (json['shareCount'] as num?)?.toInt(),
  replyCount: (json['replyCount'] as num?)?.toInt(),
  realCollectionCount: (json['realCollectionCount'] as num?)?.toInt(),
);

Map<String, dynamic> _$ConsumptionToJson(Consumption instance) =>
    <String, dynamic>{
      'collectionCount': instance.collectionCount,
      'shareCount': instance.shareCount,
      'replyCount': instance.replyCount,
      'realCollectionCount': instance.realCollectionCount,
    };

Cover _$CoverFromJson(Map<String, dynamic> json) => Cover(
  feed: json['feed'] as String?,
  detail: json['detail'] as String?,
  blurred: json['blurred'] as String?,
  sharing: json['sharing'],
  homepage: json['homepage'] as String?,
);

Map<String, dynamic> _$CoverToJson(Cover instance) => <String, dynamic>{
  'feed': instance.feed,
  'detail': instance.detail,
  'blurred': instance.blurred,
  'sharing': instance.sharing,
  'homepage': instance.homepage,
};

PlayInfo _$PlayInfoFromJson(Map<String, dynamic> json) => PlayInfo(
  height: (json['height'] as num?)?.toInt(),
  width: (json['width'] as num?)?.toInt(),
  urlList: (json['urlList'] as List<dynamic>?)
      ?.map((e) => UrlList.fromJson(e as Map<String, dynamic>))
      .toList(),
  name: json['name'] as String?,
  type: json['type'] as String?,
  url: json['url'] as String?,
);

Map<String, dynamic> _$PlayInfoToJson(PlayInfo instance) => <String, dynamic>{
  'height': instance.height,
  'width': instance.width,
  'urlList': instance.urlList,
  'name': instance.name,
  'type': instance.type,
  'url': instance.url,
};

UrlList _$UrlListFromJson(Map<String, dynamic> json) => UrlList(
  name: json['name'] as String?,
  url: json['url'] as String?,
  size: (json['size'] as num?)?.toInt(),
);

Map<String, dynamic> _$UrlListToJson(UrlList instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
  'size': instance.size,
};

Provider _$ProviderFromJson(Map<String, dynamic> json) => Provider(
  name: json['name'] as String?,
  alias: json['alias'] as String?,
  icon: json['icon'] as String?,
);

Map<String, dynamic> _$ProviderToJson(Provider instance) => <String, dynamic>{
  'name': instance.name,
  'alias': instance.alias,
  'icon': instance.icon,
};

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String?,
  actionUrl: json['actionUrl'] as String?,
  adTrack: json['adTrack'],
  desc: json['desc'] as String?,
  bgPicture: json['bgPicture'] as String?,
  headerImage: json['headerImage'] as String?,
  tagRecType: json['tagRecType'] as String?,
  childTagList: json['childTagList'],
  childTagIdList: json['childTagIdList'],
  haveReward: json['haveReward'] as bool?,
  ifNewest: json['ifNewest'] as bool?,
  newestEndTime: json['newestEndTime'],
  communityIndex: (json['communityIndex'] as num?)?.toInt(),
);

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'actionUrl': instance.actionUrl,
  'adTrack': instance.adTrack,
  'desc': instance.desc,
  'bgPicture': instance.bgPicture,
  'headerImage': instance.headerImage,
  'tagRecType': instance.tagRecType,
  'childTagList': instance.childTagList,
  'childTagIdList': instance.childTagIdList,
  'haveReward': instance.haveReward,
  'ifNewest': instance.ifNewest,
  'newestEndTime': instance.newestEndTime,
  'communityIndex': instance.communityIndex,
};

VideoPosterBean _$VideoPosterBeanFromJson(Map<String, dynamic> json) =>
    VideoPosterBean(
      scale: (json['scale'] as num?)?.toDouble(),
      url: json['url'] as String?,
      fileSizeStr: json['fileSizeStr'] as String?,
    );

Map<String, dynamic> _$VideoPosterBeanToJson(VideoPosterBean instance) =>
    <String, dynamic>{
      'scale': instance.scale,
      'url': instance.url,
      'fileSizeStr': instance.fileSizeStr,
    };

WebUrl _$WebUrlFromJson(Map<String, dynamic> json) =>
    WebUrl(raw: json['raw'] as String?, forWeibo: json['forWeibo'] as String?);

Map<String, dynamic> _$WebUrlToJson(WebUrl instance) => <String, dynamic>{
  'raw': instance.raw,
  'forWeibo': instance.forWeibo,
};

Header _$HeaderFromJson(Map<String, dynamic> json) => Header(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'] as String?,
  font: json['font'],
  subTitle: json['subTitle'],
  subTitleFont: json['subTitleFont'],
  textAlign: json['textAlign'] as String?,
  cover: json['cover'],
  label: json['label'],
  actionUrl: json['actionUrl'] as String?,
  labelList: json['labelList'],
  rightText: json['rightText'],
  icon: json['icon'] as String?,
  iconType: json['iconType'] as String?,
  description: json['description'] as String?,
  time: (json['time'] as num?)?.toInt(),
  showHateVideo: json['showHateVideo'] as bool?,
);

Map<String, dynamic> _$HeaderToJson(Header instance) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'font': instance.font,
  'subTitle': instance.subTitle,
  'subTitleFont': instance.subTitleFont,
  'textAlign': instance.textAlign,
  'cover': instance.cover,
  'label': instance.label,
  'actionUrl': instance.actionUrl,
  'labelList': instance.labelList,
  'rightText': instance.rightText,
  'icon': instance.icon,
  'iconType': instance.iconType,
  'description': instance.description,
  'time': instance.time,
  'showHateVideo': instance.showHateVideo,
};

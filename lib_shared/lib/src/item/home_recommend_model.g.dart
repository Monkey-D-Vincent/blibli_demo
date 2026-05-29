// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_recommend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeRecommendModel _$HomeRecommendModelFromJson(Map<String, dynamic> json) =>
    HomeRecommendModel(
      itemList: (json['itemList'] as List<dynamic>?)
          ?.map(
            (e) =>
                HomeRecommendModelItemList.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
      count: const SafeStringConverter().fromJson(json['count']),
      total: const SafeStringConverter().fromJson(json['total']),
      nextPageUrl: const SafeStringConverter().fromJson(json['nextPageUrl']),
      adExist: json['adExist'] as bool?,
    );

Map<String, dynamic> _$HomeRecommendModelToJson(HomeRecommendModel instance) =>
    <String, dynamic>{
      'itemList': instance.itemList,
      'count': const SafeStringConverter().toJson(instance.count),
      'total': const SafeStringConverter().toJson(instance.total),
      'nextPageUrl': const SafeStringConverter().toJson(instance.nextPageUrl),
      'adExist': instance.adExist,
    };

HomeRecommendModelItemList _$HomeRecommendModelItemListFromJson(
  Map<String, dynamic> json,
) => HomeRecommendModelItemList(
  type: const SafeStringConverter().fromJson(json['type']),
  data: json['data'] == null
      ? null
      : PurpleData.fromJson(json['data'] as Map<String, dynamic>),
  trackingData: json['trackingData'],
  tag: json['tag'],
  id: const SafeStringConverter().fromJson(json['id']),
  adIndex: const SafeStringConverter().fromJson(json['adIndex']),
);

Map<String, dynamic> _$HomeRecommendModelItemListToJson(
  HomeRecommendModelItemList instance,
) => <String, dynamic>{
  'type': const SafeStringConverter().toJson(instance.type),
  'data': instance.data,
  'trackingData': instance.trackingData,
  'tag': instance.tag,
  'id': const SafeStringConverter().toJson(instance.id),
  'adIndex': const SafeStringConverter().toJson(instance.adIndex),
};

PurpleData _$PurpleDataFromJson(Map<String, dynamic> json) => PurpleData(
  dataType: const SafeStringConverter().fromJson(json['dataType']),
  itemList: (json['itemList'] as List<dynamic>?)
      ?.map((e) => DataItemList.fromJson(e as Map<String, dynamic>))
      .toList(),
  count: const SafeStringConverter().fromJson(json['count']),
  text: const SafeStringConverter().fromJson(json['text']),
  font: const SafeStringConverter().fromJson(json['font']),
  adTrack: json['adTrack'] as List<dynamic>?,
  id: const SafeStringConverter().fromJson(json['id']),
  title: const SafeStringConverter().fromJson(json['title']),
  description: const SafeStringConverter().fromJson(json['description']),
  dataLibrary: const SafeStringConverter().fromJson(json['library']),
  tags: (json['tags'] as List<dynamic>?)
      ?.map((e) => Tag.fromJson(e as Map<String, dynamic>))
      .toList(),
  consumption: json['consumption'] == null
      ? null
      : Consumption.fromJson(json['consumption'] as Map<String, dynamic>),
  resourceType: const SafeStringConverter().fromJson(json['resourceType']),
  slogan: const SafeStringConverter().fromJson(json['slogan']),
  provider: json['provider'] == null
      ? null
      : Provider.fromJson(json['provider'] as Map<String, dynamic>),
  category: const SafeStringConverter().fromJson(json['category']),
  author: json['author'] == null
      ? null
      : Author.fromJson(json['author'] as Map<String, dynamic>),
  cover: json['cover'] == null
      ? null
      : Cover.fromJson(json['cover'] as Map<String, dynamic>),
  playUrl: const SafeStringConverter().fromJson(json['playUrl']),
  thumbPlayUrl: const SafeStringConverter().fromJson(json['thumbPlayUrl']),
  duration: const SafeStringConverter().fromJson(json['duration']),
  webUrl: json['webUrl'] == null
      ? null
      : WebUrl.fromJson(json['webUrl'] as Map<String, dynamic>),
  releaseTime: const SafeStringConverter().fromJson(json['releaseTime']),
  playInfo: (json['playInfo'] as List<dynamic>?)
      ?.map((e) => PlayInfo.fromJson(e as Map<String, dynamic>))
      .toList(),
  campaign: json['campaign'],
  waterMarks: json['waterMarks'],
  ad: json['ad'] as bool?,
  type: const SafeStringConverter().fromJson(json['type']),
  titlePgc: const SafeStringConverter().fromJson(json['titlePgc']),
  descriptionPgc: const SafeStringConverter().fromJson(json['descriptionPgc']),
  remark: const SafeStringConverter().fromJson(json['remark']),
  ifLimitVideo: json['ifLimitVideo'] as bool?,
  searchWeight: const SafeStringConverter().fromJson(json['searchWeight']),
  brandWebsiteInfo: json['brandWebsiteInfo'],
  videoPosterBean: json['videoPosterBean'] == null
      ? null
      : VideoPosterBean.fromJson(
          json['videoPosterBean'] as Map<String, dynamic>,
        ),
  idx: const SafeStringConverter().fromJson(json['idx']),
  shareAdTrack: json['shareAdTrack'],
  favoriteAdTrack: json['favoriteAdTrack'],
  webAdTrack: json['webAdTrack'],
  date: const SafeStringConverter().fromJson(json['date']),
  promotion: json['promotion'],
  label: json['label'],
  labelList: json['labelList'] as List<dynamic>?,
  descriptionEditor: const SafeStringConverter().fromJson(
    json['descriptionEditor'],
  ),
  collected: json['collected'] as bool?,
  reallyCollected: json['reallyCollected'] as bool?,
  played: json['played'] as bool?,
  subtitles: json['subtitles'] as List<dynamic>?,
  lastViewTime: json['lastViewTime'],
  playlists: json['playlists'],
  src: json['src'],
  recallSource: json['recallSource'],
  dataRecallSource: json['recall_source'],
  header: json['header'] == null
      ? null
      : PurpleHeader.fromJson(json['header'] as Map<String, dynamic>),
  footer: json['footer'],
);

Map<String, dynamic> _$PurpleDataToJson(
  PurpleData instance,
) => <String, dynamic>{
  'dataType': const SafeStringConverter().toJson(instance.dataType),
  'itemList': instance.itemList,
  'count': const SafeStringConverter().toJson(instance.count),
  'text': const SafeStringConverter().toJson(instance.text),
  'font': const SafeStringConverter().toJson(instance.font),
  'adTrack': instance.adTrack,
  'id': const SafeStringConverter().toJson(instance.id),
  'title': const SafeStringConverter().toJson(instance.title),
  'description': const SafeStringConverter().toJson(instance.description),
  'library': const SafeStringConverter().toJson(instance.dataLibrary),
  'tags': instance.tags,
  'consumption': instance.consumption,
  'resourceType': const SafeStringConverter().toJson(instance.resourceType),
  'slogan': const SafeStringConverter().toJson(instance.slogan),
  'provider': instance.provider,
  'category': const SafeStringConverter().toJson(instance.category),
  'author': instance.author,
  'cover': instance.cover,
  'playUrl': const SafeStringConverter().toJson(instance.playUrl),
  'thumbPlayUrl': const SafeStringConverter().toJson(instance.thumbPlayUrl),
  'duration': const SafeStringConverter().toJson(instance.duration),
  'webUrl': instance.webUrl,
  'releaseTime': const SafeStringConverter().toJson(instance.releaseTime),
  'playInfo': instance.playInfo,
  'campaign': instance.campaign,
  'waterMarks': instance.waterMarks,
  'ad': instance.ad,
  'type': const SafeStringConverter().toJson(instance.type),
  'titlePgc': const SafeStringConverter().toJson(instance.titlePgc),
  'descriptionPgc': const SafeStringConverter().toJson(instance.descriptionPgc),
  'remark': const SafeStringConverter().toJson(instance.remark),
  'ifLimitVideo': instance.ifLimitVideo,
  'searchWeight': const SafeStringConverter().toJson(instance.searchWeight),
  'brandWebsiteInfo': instance.brandWebsiteInfo,
  'videoPosterBean': instance.videoPosterBean,
  'idx': const SafeStringConverter().toJson(instance.idx),
  'shareAdTrack': instance.shareAdTrack,
  'favoriteAdTrack': instance.favoriteAdTrack,
  'webAdTrack': instance.webAdTrack,
  'date': const SafeStringConverter().toJson(instance.date),
  'promotion': instance.promotion,
  'label': instance.label,
  'labelList': instance.labelList,
  'descriptionEditor': const SafeStringConverter().toJson(
    instance.descriptionEditor,
  ),
  'collected': instance.collected,
  'reallyCollected': instance.reallyCollected,
  'played': instance.played,
  'subtitles': instance.subtitles,
  'lastViewTime': instance.lastViewTime,
  'playlists': instance.playlists,
  'src': instance.src,
  'recallSource': instance.recallSource,
  'recall_source': instance.dataRecallSource,
  'header': instance.header,
  'footer': instance.footer,
};

Author _$AuthorFromJson(Map<String, dynamic> json) => Author(
  id: const SafeStringConverter().fromJson(json['id']),
  icon: const SafeStringConverter().fromJson(json['icon']),
  name: const SafeStringConverter().fromJson(json['name']),
  description: const SafeStringConverter().fromJson(json['description']),
  link: const SafeStringConverter().fromJson(json['link']),
  latestReleaseTime: const SafeStringConverter().fromJson(
    json['latestReleaseTime'],
  ),
  videoNum: const SafeStringConverter().fromJson(json['videoNum']),
  adTrack: json['adTrack'],
  follow: json['follow'] == null
      ? null
      : Follow.fromJson(json['follow'] as Map<String, dynamic>),
  shield: json['shield'] == null
      ? null
      : Shield.fromJson(json['shield'] as Map<String, dynamic>),
  approvedNotReadyVideoCount: const SafeStringConverter().fromJson(
    json['approvedNotReadyVideoCount'],
  ),
  ifPgc: json['ifPgc'] as bool?,
  recSort: const SafeStringConverter().fromJson(json['recSort']),
  expert: json['expert'] as bool?,
);

Map<String, dynamic> _$AuthorToJson(Author instance) => <String, dynamic>{
  'id': const SafeStringConverter().toJson(instance.id),
  'icon': const SafeStringConverter().toJson(instance.icon),
  'name': const SafeStringConverter().toJson(instance.name),
  'description': const SafeStringConverter().toJson(instance.description),
  'link': const SafeStringConverter().toJson(instance.link),
  'latestReleaseTime': const SafeStringConverter().toJson(
    instance.latestReleaseTime,
  ),
  'videoNum': const SafeStringConverter().toJson(instance.videoNum),
  'adTrack': instance.adTrack,
  'follow': instance.follow,
  'shield': instance.shield,
  'approvedNotReadyVideoCount': const SafeStringConverter().toJson(
    instance.approvedNotReadyVideoCount,
  ),
  'ifPgc': instance.ifPgc,
  'recSort': const SafeStringConverter().toJson(instance.recSort),
  'expert': instance.expert,
};

Follow _$FollowFromJson(Map<String, dynamic> json) => Follow(
  itemType: const SafeStringConverter().fromJson(json['itemType']),
  itemId: const SafeStringConverter().fromJson(json['itemId']),
  followed: json['followed'] as bool?,
);

Map<String, dynamic> _$FollowToJson(Follow instance) => <String, dynamic>{
  'itemType': const SafeStringConverter().toJson(instance.itemType),
  'itemId': const SafeStringConverter().toJson(instance.itemId),
  'followed': instance.followed,
};

Shield _$ShieldFromJson(Map<String, dynamic> json) => Shield(
  itemType: const SafeStringConverter().fromJson(json['itemType']),
  itemId: const SafeStringConverter().fromJson(json['itemId']),
  shielded: json['shielded'] as bool?,
);

Map<String, dynamic> _$ShieldToJson(Shield instance) => <String, dynamic>{
  'itemType': const SafeStringConverter().toJson(instance.itemType),
  'itemId': const SafeStringConverter().toJson(instance.itemId),
  'shielded': instance.shielded,
};

Consumption _$ConsumptionFromJson(Map<String, dynamic> json) => Consumption(
  collectionCount: const SafeStringConverter().fromJson(
    json['collectionCount'],
  ),
  shareCount: const SafeStringConverter().fromJson(json['shareCount']),
  replyCount: const SafeStringConverter().fromJson(json['replyCount']),
  realCollectionCount: const SafeStringConverter().fromJson(
    json['realCollectionCount'],
  ),
);

Map<String, dynamic> _$ConsumptionToJson(Consumption instance) =>
    <String, dynamic>{
      'collectionCount': const SafeStringConverter().toJson(
        instance.collectionCount,
      ),
      'shareCount': const SafeStringConverter().toJson(instance.shareCount),
      'replyCount': const SafeStringConverter().toJson(instance.replyCount),
      'realCollectionCount': const SafeStringConverter().toJson(
        instance.realCollectionCount,
      ),
    };

Cover _$CoverFromJson(Map<String, dynamic> json) => Cover(
  feed: const SafeStringConverter().fromJson(json['feed']),
  detail: const SafeStringConverter().fromJson(json['detail']),
  blurred: const SafeStringConverter().fromJson(json['blurred']),
  sharing: json['sharing'],
  homepage: const SafeStringConverter().fromJson(json['homepage']),
);

Map<String, dynamic> _$CoverToJson(Cover instance) => <String, dynamic>{
  'feed': const SafeStringConverter().toJson(instance.feed),
  'detail': const SafeStringConverter().toJson(instance.detail),
  'blurred': const SafeStringConverter().toJson(instance.blurred),
  'sharing': instance.sharing,
  'homepage': const SafeStringConverter().toJson(instance.homepage),
};

PurpleHeader _$PurpleHeaderFromJson(Map<String, dynamic> json) => PurpleHeader(
  id: const SafeStringConverter().fromJson(json['id']),
  title: const SafeStringConverter().fromJson(json['title']),
  font: const SafeStringConverter().fromJson(json['font']),
  subTitle: json['subTitle'],
  subTitleFont: json['subTitleFont'],
  textAlign: const SafeStringConverter().fromJson(json['textAlign']),
  cover: json['cover'],
  label: json['label'],
  actionUrl: const SafeStringConverter().fromJson(json['actionUrl']),
  labelList: json['labelList'],
  rightText: json['rightText'],
);

Map<String, dynamic> _$PurpleHeaderToJson(PurpleHeader instance) =>
    <String, dynamic>{
      'id': const SafeStringConverter().toJson(instance.id),
      'title': const SafeStringConverter().toJson(instance.title),
      'font': const SafeStringConverter().toJson(instance.font),
      'subTitle': instance.subTitle,
      'subTitleFont': instance.subTitleFont,
      'textAlign': const SafeStringConverter().toJson(instance.textAlign),
      'cover': instance.cover,
      'label': instance.label,
      'actionUrl': const SafeStringConverter().toJson(instance.actionUrl),
      'labelList': instance.labelList,
      'rightText': instance.rightText,
    };

DataItemList _$DataItemListFromJson(Map<String, dynamic> json) => DataItemList(
  type: const SafeStringConverter().fromJson(json['type']),
  data: json['data'] == null
      ? null
      : FluffyData.fromJson(json['data'] as Map<String, dynamic>),
  trackingData: json['trackingData'],
  tag: json['tag'],
  id: const SafeStringConverter().fromJson(json['id']),
  adIndex: const SafeStringConverter().fromJson(json['adIndex']),
);

Map<String, dynamic> _$DataItemListToJson(DataItemList instance) =>
    <String, dynamic>{
      'type': const SafeStringConverter().toJson(instance.type),
      'data': instance.data,
      'trackingData': instance.trackingData,
      'tag': instance.tag,
      'id': const SafeStringConverter().toJson(instance.id),
      'adIndex': const SafeStringConverter().toJson(instance.adIndex),
    };

FluffyData _$FluffyDataFromJson(Map<String, dynamic> json) => FluffyData(
  dataType: const SafeStringConverter().fromJson(json['dataType']),
  id: const SafeStringConverter().fromJson(json['id']),
  title: const SafeStringConverter().fromJson(json['title']),
  description: const SafeStringConverter().fromJson(json['description']),
  image: const SafeStringConverter().fromJson(json['image']),
  actionUrl: const SafeStringConverter().fromJson(json['actionUrl']),
  adTrack: json['adTrack'] as List<dynamic>?,
  shade: json['shade'] as bool?,
  label: json['label'] == null
      ? null
      : Label.fromJson(json['label'] as Map<String, dynamic>),
  labelList: json['labelList'] as List<dynamic>?,
  header: json['header'] == null
      ? null
      : FluffyHeader.fromJson(json['header'] as Map<String, dynamic>),
  autoPlay: json['autoPlay'] as bool?,
  text: const SafeStringConverter().fromJson(json['text']),
);

Map<String, dynamic> _$FluffyDataToJson(FluffyData instance) =>
    <String, dynamic>{
      'dataType': const SafeStringConverter().toJson(instance.dataType),
      'id': const SafeStringConverter().toJson(instance.id),
      'title': const SafeStringConverter().toJson(instance.title),
      'description': const SafeStringConverter().toJson(instance.description),
      'image': const SafeStringConverter().toJson(instance.image),
      'actionUrl': const SafeStringConverter().toJson(instance.actionUrl),
      'adTrack': instance.adTrack,
      'shade': instance.shade,
      'label': instance.label,
      'labelList': instance.labelList,
      'header': instance.header,
      'autoPlay': instance.autoPlay,
      'text': const SafeStringConverter().toJson(instance.text),
    };

FluffyHeader _$FluffyHeaderFromJson(Map<String, dynamic> json) => FluffyHeader(
  id: const SafeStringConverter().fromJson(json['id']),
  title: json['title'],
  font: json['font'],
  subTitle: json['subTitle'],
  subTitleFont: json['subTitleFont'],
  textAlign: const SafeStringConverter().fromJson(json['textAlign']),
  cover: json['cover'],
  label: json['label'],
  actionUrl: json['actionUrl'],
  labelList: json['labelList'],
  rightText: json['rightText'],
  icon: json['icon'],
  description: json['description'],
);

Map<String, dynamic> _$FluffyHeaderToJson(FluffyHeader instance) =>
    <String, dynamic>{
      'id': const SafeStringConverter().toJson(instance.id),
      'title': instance.title,
      'font': instance.font,
      'subTitle': instance.subTitle,
      'subTitleFont': instance.subTitleFont,
      'textAlign': const SafeStringConverter().toJson(instance.textAlign),
      'cover': instance.cover,
      'label': instance.label,
      'actionUrl': instance.actionUrl,
      'labelList': instance.labelList,
      'rightText': instance.rightText,
      'icon': instance.icon,
      'description': instance.description,
    };

Label _$LabelFromJson(Map<String, dynamic> json) => Label(
  text: const SafeStringConverter().fromJson(json['text']),
  card: const SafeStringConverter().fromJson(json['card']),
  detail: json['detail'],
);

Map<String, dynamic> _$LabelToJson(Label instance) => <String, dynamic>{
  'text': const SafeStringConverter().toJson(instance.text),
  'card': const SafeStringConverter().toJson(instance.card),
  'detail': instance.detail,
};

PlayInfo _$PlayInfoFromJson(Map<String, dynamic> json) => PlayInfo(
  height: const SafeStringConverter().fromJson(json['height']),
  width: const SafeStringConverter().fromJson(json['width']),
  urlList: (json['urlList'] as List<dynamic>?)
      ?.map((e) => UrlList.fromJson(e as Map<String, dynamic>))
      .toList(),
  name: const SafeStringConverter().fromJson(json['name']),
  type: const SafeStringConverter().fromJson(json['type']),
  url: const SafeStringConverter().fromJson(json['url']),
);

Map<String, dynamic> _$PlayInfoToJson(PlayInfo instance) => <String, dynamic>{
  'height': const SafeStringConverter().toJson(instance.height),
  'width': const SafeStringConverter().toJson(instance.width),
  'urlList': instance.urlList,
  'name': const SafeStringConverter().toJson(instance.name),
  'type': const SafeStringConverter().toJson(instance.type),
  'url': const SafeStringConverter().toJson(instance.url),
};

UrlList _$UrlListFromJson(Map<String, dynamic> json) => UrlList(
  name: const SafeStringConverter().fromJson(json['name']),
  url: const SafeStringConverter().fromJson(json['url']),
  size: const SafeStringConverter().fromJson(json['size']),
);

Map<String, dynamic> _$UrlListToJson(UrlList instance) => <String, dynamic>{
  'name': const SafeStringConverter().toJson(instance.name),
  'url': const SafeStringConverter().toJson(instance.url),
  'size': const SafeStringConverter().toJson(instance.size),
};

Provider _$ProviderFromJson(Map<String, dynamic> json) => Provider(
  name: const SafeStringConverter().fromJson(json['name']),
  alias: const SafeStringConverter().fromJson(json['alias']),
  icon: const SafeStringConverter().fromJson(json['icon']),
);

Map<String, dynamic> _$ProviderToJson(Provider instance) => <String, dynamic>{
  'name': const SafeStringConverter().toJson(instance.name),
  'alias': const SafeStringConverter().toJson(instance.alias),
  'icon': const SafeStringConverter().toJson(instance.icon),
};

Tag _$TagFromJson(Map<String, dynamic> json) => Tag(
  id: const SafeStringConverter().fromJson(json['id']),
  name: const SafeStringConverter().fromJson(json['name']),
  actionUrl: const SafeStringConverter().fromJson(json['actionUrl']),
  adTrack: json['adTrack'],
  desc: const SafeStringConverter().fromJson(json['desc']),
  bgPicture: const SafeStringConverter().fromJson(json['bgPicture']),
  headerImage: const SafeStringConverter().fromJson(json['headerImage']),
  tagRecType: const SafeStringConverter().fromJson(json['tagRecType']),
  childTagList: json['childTagList'],
  childTagIdList: json['childTagIdList'],
  haveReward: json['haveReward'] as bool?,
  ifNewest: json['ifNewest'] as bool?,
  newestEndTime: json['newestEndTime'],
  communityIndex: const SafeStringConverter().fromJson(json['communityIndex']),
);

Map<String, dynamic> _$TagToJson(Tag instance) => <String, dynamic>{
  'id': const SafeStringConverter().toJson(instance.id),
  'name': const SafeStringConverter().toJson(instance.name),
  'actionUrl': const SafeStringConverter().toJson(instance.actionUrl),
  'adTrack': instance.adTrack,
  'desc': const SafeStringConverter().toJson(instance.desc),
  'bgPicture': const SafeStringConverter().toJson(instance.bgPicture),
  'headerImage': const SafeStringConverter().toJson(instance.headerImage),
  'tagRecType': const SafeStringConverter().toJson(instance.tagRecType),
  'childTagList': instance.childTagList,
  'childTagIdList': instance.childTagIdList,
  'haveReward': instance.haveReward,
  'ifNewest': instance.ifNewest,
  'newestEndTime': instance.newestEndTime,
  'communityIndex': const SafeStringConverter().toJson(instance.communityIndex),
};

VideoPosterBean _$VideoPosterBeanFromJson(Map<String, dynamic> json) =>
    VideoPosterBean(
      scale: (json['scale'] as num?)?.toDouble(),
      url: const SafeStringConverter().fromJson(json['url']),
      fileSizeStr: const SafeStringConverter().fromJson(json['fileSizeStr']),
    );

Map<String, dynamic> _$VideoPosterBeanToJson(VideoPosterBean instance) =>
    <String, dynamic>{
      'scale': instance.scale,
      'url': const SafeStringConverter().toJson(instance.url),
      'fileSizeStr': const SafeStringConverter().toJson(instance.fileSizeStr),
    };

WebUrl _$WebUrlFromJson(Map<String, dynamic> json) => WebUrl(
  raw: const SafeStringConverter().fromJson(json['raw']),
  forWeibo: const SafeStringConverter().fromJson(json['forWeibo']),
);

Map<String, dynamic> _$WebUrlToJson(WebUrl instance) => <String, dynamic>{
  'raw': const SafeStringConverter().toJson(instance.raw),
  'forWeibo': const SafeStringConverter().toJson(instance.forWeibo),
};

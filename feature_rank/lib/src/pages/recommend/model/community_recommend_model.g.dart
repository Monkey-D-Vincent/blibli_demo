// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community_recommend_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommunityRecommendModel _$CommunityRecommendModelFromJson(
  Map<String, dynamic> json,
) => CommunityRecommendModel(
  itemList: (json['itemList'] as List<dynamic>?)
      ?.map(
        (e) =>
            CommunityRecommendModelItemList.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  count: (json['count'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
  nextPageUrl: json['nextPageUrl'] as String?,
  adExist: json['adExist'] as bool?,
);

Map<String, dynamic> _$CommunityRecommendModelToJson(
  CommunityRecommendModel instance,
) => <String, dynamic>{
  'itemList': instance.itemList,
  'count': instance.count,
  'total': instance.total,
  'nextPageUrl': instance.nextPageUrl,
  'adExist': instance.adExist,
};

CommunityRecommendModelItemList _$CommunityRecommendModelItemListFromJson(
  Map<String, dynamic> json,
) => CommunityRecommendModelItemList(
  type: json['type'] as String?,
  data: json['data'] == null
      ? null
      : PurpleData.fromJson(json['data'] as Map<String, dynamic>),
  trackingData: json['trackingData'],
  tag: json['tag'],
  id: (json['id'] as num?)?.toInt(),
  adIndex: (json['adIndex'] as num?)?.toInt(),
);

Map<String, dynamic> _$CommunityRecommendModelItemListToJson(
  CommunityRecommendModelItemList instance,
) => <String, dynamic>{
  'type': instance.type,
  'data': instance.data,
  'trackingData': instance.trackingData,
  'tag': instance.tag,
  'id': instance.id,
  'adIndex': instance.adIndex,
};

PurpleData _$PurpleDataFromJson(Map<String, dynamic> json) => PurpleData(
  dataType: json['dataType'] as String?,
  header: json['header'] == null
      ? null
      : PurpleHeader.fromJson(json['header'] as Map<String, dynamic>),
  itemList: (json['itemList'] as List<dynamic>?)
      ?.map((e) => DataItemList.fromJson(e as Map<String, dynamic>))
      .toList(),
  count: (json['count'] as num?)?.toInt(),
  adTrack: json['adTrack'],
  footer: json['footer'],
  content: json['content'] == null
      ? null
      : Content.fromJson(json['content'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PurpleDataToJson(PurpleData instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'header': instance.header,
      'itemList': instance.itemList,
      'count': instance.count,
      'adTrack': instance.adTrack,
      'footer': instance.footer,
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
  uid: (json['uid'] as num?)?.toInt(),
  createTime: (json['createTime'] as num?)?.toInt(),
  updateTime: (json['updateTime'] as num?)?.toInt(),
  collected: json['collected'] as bool?,
  reallyCollected: json['reallyCollected'] as bool?,
  owner: json['owner'] == null
      ? null
      : Owner.fromJson(json['owner'] as Map<String, dynamic>),
  cover: json['cover'] == null
      ? null
      : Cover.fromJson(json['cover'] as Map<String, dynamic>),
  selectedTime: json['selectedTime'],
  checkStatus: json['checkStatus'] as String?,
  area: json['area'] as String?,
  city: json['city'] as String?,
  longitude: (json['longitude'] as num?)?.toDouble(),
  latitude: (json['latitude'] as num?)?.toDouble(),
  ifMock: json['ifMock'] as bool?,
  validateStatus: json['validateStatus'] as String?,
  validateResult: json['validateResult'] as String?,
  width: (json['width'] as num?)?.toInt(),
  height: (json['height'] as num?)?.toInt(),
  addWatermark: json['addWatermark'] as bool?,
  recentOnceReply: json['recentOnceReply'] == null
      ? null
      : RecentOnceReply.fromJson(
          json['recentOnceReply'] as Map<String, dynamic>,
        ),
  privateMessageActionUrl: json['privateMessageActionUrl'],
  source: json['source'] as String?,
  playUrl: json['playUrl'] as String?,
  status: json['status'],
  releaseTime: (json['releaseTime'] as num?)?.toInt(),
  duration: (json['duration'] as num?)?.toInt(),
  transId: json['transId'],
  type: json['type'] as String?,
  validateTaskId: json['validateTaskId'] as String?,
  playUrlWatermark: json['playUrlWatermark'] as String?,
  url: json['url'] as String?,
  urls: (json['urls'] as List<dynamic>?)?.map((e) => e as String).toList(),
  urlsWithWatermark: (json['urlsWithWatermark'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
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
      'uid': instance.uid,
      'createTime': instance.createTime,
      'updateTime': instance.updateTime,
      'collected': instance.collected,
      'reallyCollected': instance.reallyCollected,
      'owner': instance.owner,
      'cover': instance.cover,
      'selectedTime': instance.selectedTime,
      'checkStatus': instance.checkStatus,
      'area': instance.area,
      'city': instance.city,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'ifMock': instance.ifMock,
      'validateStatus': instance.validateStatus,
      'validateResult': instance.validateResult,
      'width': instance.width,
      'height': instance.height,
      'addWatermark': instance.addWatermark,
      'recentOnceReply': instance.recentOnceReply,
      'privateMessageActionUrl': instance.privateMessageActionUrl,
      'source': instance.source,
      'playUrl': instance.playUrl,
      'status': instance.status,
      'releaseTime': instance.releaseTime,
      'duration': instance.duration,
      'transId': instance.transId,
      'type': instance.type,
      'validateTaskId': instance.validateTaskId,
      'playUrlWatermark': instance.playUrlWatermark,
      'url': instance.url,
      'urls': instance.urls,
      'urlsWithWatermark': instance.urlsWithWatermark,
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
  blurred: json['blurred'],
  sharing: json['sharing'],
  homepage: json['homepage'],
);

Map<String, dynamic> _$CoverToJson(Cover instance) => <String, dynamic>{
  'feed': instance.feed,
  'detail': instance.detail,
  'blurred': instance.blurred,
  'sharing': instance.sharing,
  'homepage': instance.homepage,
};

Owner _$OwnerFromJson(Map<String, dynamic> json) => Owner(
  uid: (json['uid'] as num?)?.toInt(),
  nickname: json['nickname'] as String?,
  avatar: json['avatar'] as String?,
  userType: json['userType'] as String?,
  ifPgc: json['ifPgc'] as bool?,
  description: json['description'] as String?,
  area: json['area'],
  gender: json['gender'] as String?,
  registDate: (json['registDate'] as num?)?.toInt(),
  releaseDate: (json['releaseDate'] as num?)?.toInt(),
  cover: json['cover'] as String?,
  actionUrl: json['actionUrl'] as String?,
  followed: json['followed'] as bool?,
  limitVideoOpen: json['limitVideoOpen'] as bool?,
  ownerLibrary: json['library'] as String?,
  birthday: (json['birthday'] as num?)?.toInt(),
  country: json['country'] as String?,
  city: json['city'] as String?,
  university: json['university'] as String?,
  job: json['job'] as String?,
  expert: json['expert'] as bool?,
);

Map<String, dynamic> _$OwnerToJson(Owner instance) => <String, dynamic>{
  'uid': instance.uid,
  'nickname': instance.nickname,
  'avatar': instance.avatar,
  'userType': instance.userType,
  'ifPgc': instance.ifPgc,
  'description': instance.description,
  'area': instance.area,
  'gender': instance.gender,
  'registDate': instance.registDate,
  'releaseDate': instance.releaseDate,
  'cover': instance.cover,
  'actionUrl': instance.actionUrl,
  'followed': instance.followed,
  'limitVideoOpen': instance.limitVideoOpen,
  'library': instance.ownerLibrary,
  'birthday': instance.birthday,
  'country': instance.country,
  'city': instance.city,
  'university': instance.university,
  'job': instance.job,
  'expert': instance.expert,
};

RecentOnceReply _$RecentOnceReplyFromJson(Map<String, dynamic> json) =>
    RecentOnceReply(
      dataType: json['dataType'] as String?,
      message: json['message'] as String?,
      nickname: json['nickname'] as String?,
      actionUrl: json['actionUrl'] as String?,
      contentType: json['contentType'],
    );

Map<String, dynamic> _$RecentOnceReplyToJson(RecentOnceReply instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'message': instance.message,
      'nickname': instance.nickname,
      'actionUrl': instance.actionUrl,
      'contentType': instance.contentType,
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
  newestEndTime: (json['newestEndTime'] as num?)?.toInt(),
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

PurpleHeader _$PurpleHeaderFromJson(Map<String, dynamic> json) => PurpleHeader(
  id: (json['id'] as num?)?.toInt(),
  actionUrl: json['actionUrl'] as String?,
  labelList: json['labelList'],
  icon: json['icon'] as String?,
  iconType: json['iconType'] as String?,
  time: (json['time'] as num?)?.toInt(),
  showHateVideo: json['showHateVideo'] as bool?,
  followType: json['followType'] as String?,
  tagId: (json['tagId'] as num?)?.toInt(),
  tagName: json['tagName'],
  issuerName: json['issuerName'] as String?,
  topShow: json['topShow'] as bool?,
);

Map<String, dynamic> _$PurpleHeaderToJson(PurpleHeader instance) =>
    <String, dynamic>{
      'id': instance.id,
      'actionUrl': instance.actionUrl,
      'labelList': instance.labelList,
      'icon': instance.icon,
      'iconType': instance.iconType,
      'time': instance.time,
      'showHateVideo': instance.showHateVideo,
      'followType': instance.followType,
      'tagId': instance.tagId,
      'tagName': instance.tagName,
      'issuerName': instance.issuerName,
      'topShow': instance.topShow,
    };

DataItemList _$DataItemListFromJson(Map<String, dynamic> json) => DataItemList(
  type: json['type'] as String?,
  data: json['data'] == null
      ? null
      : FluffyData.fromJson(json['data'] as Map<String, dynamic>),
  trackingData: json['trackingData'],
  tag: json['tag'],
  id: (json['id'] as num?)?.toInt(),
  adIndex: (json['adIndex'] as num?)?.toInt(),
);

Map<String, dynamic> _$DataItemListToJson(DataItemList instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
      'trackingData': instance.trackingData,
      'tag': instance.tag,
      'id': instance.id,
      'adIndex': instance.adIndex,
    };

FluffyData _$FluffyDataFromJson(Map<String, dynamic> json) => FluffyData(
  dataType: json['dataType'] as String?,
  title: json['title'] as String?,
  subTitle: json['subTitle'] as String?,
  bgPicture: json['bgPicture'] as String?,
  actionUrl: json['actionUrl'] as String?,
  id: (json['id'] as num?)?.toInt(),
  description: json['description'] as String?,
  image: json['image'] as String?,
  adTrack: json['adTrack'] as List<dynamic>?,
  shade: json['shade'] as bool?,
  label: json['label'] == null
      ? null
      : Label.fromJson(json['label'] as Map<String, dynamic>),
  labelList: (json['labelList'] as List<dynamic>?)
      ?.map((e) => LabelList.fromJson(e as Map<String, dynamic>))
      .toList(),
  header: json['header'] == null
      ? null
      : FluffyHeader.fromJson(json['header'] as Map<String, dynamic>),
  autoPlay: json['autoPlay'] as bool?,
);

Map<String, dynamic> _$FluffyDataToJson(FluffyData instance) =>
    <String, dynamic>{
      'dataType': instance.dataType,
      'title': instance.title,
      'subTitle': instance.subTitle,
      'bgPicture': instance.bgPicture,
      'actionUrl': instance.actionUrl,
      'id': instance.id,
      'description': instance.description,
      'image': instance.image,
      'adTrack': instance.adTrack,
      'shade': instance.shade,
      'label': instance.label,
      'labelList': instance.labelList,
      'header': instance.header,
      'autoPlay': instance.autoPlay,
    };

FluffyHeader _$FluffyHeaderFromJson(Map<String, dynamic> json) => FluffyHeader(
  id: (json['id'] as num?)?.toInt(),
  title: json['title'],
  font: json['font'],
  subTitle: json['subTitle'],
  subTitleFont: json['subTitleFont'],
  textAlign: json['textAlign'] as String?,
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
      'description': instance.description,
    };

Label _$LabelFromJson(Map<String, dynamic> json) => Label(
  text: json['text'] as String?,
  card: json['card'] as String?,
  detail: json['detail'],
);

Map<String, dynamic> _$LabelToJson(Label instance) => <String, dynamic>{
  'text': instance.text,
  'card': instance.card,
  'detail': instance.detail,
};

LabelList _$LabelListFromJson(Map<String, dynamic> json) =>
    LabelList(text: json['text'] as String?, actionUrl: json['actionUrl']);

Map<String, dynamic> _$LabelListToJson(LabelList instance) => <String, dynamic>{
  'text': instance.text,
  'actionUrl': instance.actionUrl,
};

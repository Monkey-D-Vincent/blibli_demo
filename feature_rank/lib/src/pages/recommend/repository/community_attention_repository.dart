import 'package:common/common.dart';
import 'package:feature_rank/src/pages/attention/model/community_attention_model.dart';
import 'package:lib_network/lib_network.dart';

/// http://baobab.kaiyanapp.com/api/v7/community/tab/rec
class CommunityAttentionRepository {
  static Future<CommunityAttentionModel> getData({
    String pageNextUrl = "",
  }) async {
    try {
      dynamic result;
      String url = pageNextUrl.isNotEmpty
          ? pageNextUrl
          : "/api/v7/community/tab/rec";
      result = await HttpClient().request(
        RequestConfig(url: url, method: RequestMethod.get),
      );
      return JsonUtil.parseObject(result.data, CommunityAttentionModel.fromJson)!;
    } catch (e) {
      rethrow;
    }
  }
}
import 'package:common/common.dart';
import 'package:feature_rank/src/pages/attention/model/community_attention_model.dart';
import 'package:lib_network/core/http_client.dart';
import 'package:lib_network/request/request_config.dart';
import 'package:lib_network/request/request_method.dart';

class CommunityAttentionRepository {

  static Future<CommunityAttentionModel> getData({
    String pageNextUrl = "",
  }) async {
    try {
      dynamic result;
      String url = pageNextUrl.isNotEmpty
          ? pageNextUrl
          : "/api/v6/community/tab/follow";
      result = await HttpClient().request(
        RequestConfig(url: url, method: RequestMethod.get),
      );
      return JsonUtil.parseObject(result.data, CommunityAttentionModel.fromJson)!;
    } catch (e) {
      rethrow;
    }
  }
}
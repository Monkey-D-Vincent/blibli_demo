import 'package:common/common.dart';
import 'package:feature_home/src/components/main/daily/model/home_daily_model.dart';
import 'package:lib_network/core/http_client.dart';
import 'package:lib_network/request/request_config.dart';
import 'package:lib_network/request/request_method.dart';

class HomeDailyRepository {
  static Future<HomeDailyModel> getData({
    String pageNextUrl = "",
  }) async {
    try {
      dynamic result;
      String url = pageNextUrl.isNotEmpty
          ? pageNextUrl
          : "/api/v5/index/tab/feed";
      result = await HttpClient().request(
        RequestConfig(url: url, method: RequestMethod.get),
      );
      return JsonUtil.parseObject(result.data, HomeDailyModel.fromJson)!;
    } catch (e) {
      rethrow;
    }
  }
}

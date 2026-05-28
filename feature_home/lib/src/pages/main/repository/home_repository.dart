import 'package:common/common.dart';
import 'package:lib_network/core/http_client.dart';
import 'package:lib_network/request/request_config.dart';
import 'package:lib_network/request/request_method.dart';
import 'package:feature_home/src/pages/main/model/home_titles_model.dart';

class HomeRepository {
  static Future<List<HomeTitlesModel>> getHomeCategoryList() async {
    try {
      final result = await HttpClient().request(
        RequestConfig(url: "/api/v4/categories", method: RequestMethod.get),
      );

      return JsonUtil.parseList(result.data, HomeTitlesModel.fromJson);
    } catch (e) {
      rethrow;
    }
  }
}

import 'package:blibli_demo/network/core/http_client.dart';
import 'package:blibli_demo/network/request/request_config.dart';
import 'package:blibli_demo/network/request/request_method.dart';
import 'package:blibli_demo/pages/home/model/home_titles_model.dart';
import 'package:blibli_demo/utils/json_util.dart';

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

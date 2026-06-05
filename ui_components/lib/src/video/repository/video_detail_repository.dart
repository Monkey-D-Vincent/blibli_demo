import 'package:common/common.dart';
import 'package:lib_network/core/http_client.dart';
import 'package:lib_network/request/request_config.dart';
import 'package:lib_network/request/request_method.dart';
import 'package:ui_components/src/video/model/video_detail_model.dart';

class VideoDetailRepository {
  static Future<VideoDetailModel> getData({String id = ""}) async {
    // http://baobab.kaiyanapp.com/api//v4/video/related?id=315396
    try {
      dynamic result;
      String url = "/api//v4/video/related?id=$id";
      result = await HttpClient().request(
        RequestConfig(url: url, method: RequestMethod.get),
      );
      return JsonUtil.parseObject(result.data, VideoDetailModel.fromJson)!;
    } catch (e) {
      rethrow;
    }
  }
}

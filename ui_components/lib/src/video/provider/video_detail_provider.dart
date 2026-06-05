import 'package:flutter/cupertino.dart';
import 'package:ui_components/src/video/model/video_detail_model.dart';
import 'package:ui_components/src/video/repository/video_detail_repository.dart';

class VideoDetailProvider extends ChangeNotifier {
  bool error = false;
  List<Data> list = [];

  Future<void> getData({String id = ""}) async {
    list.clear();
    notifyListeners();

    try {
      final VideoDetailModel data = await VideoDetailRepository.getData(
        id: id,
      );
      List<ItemList> itemList = data.itemList ?? [];
      for (var item in itemList) {
        if (item.type == "videoSmallCard") {
          final rawData = item.data;
          if (rawData is Data) {
            list.add(rawData);
          }
        }
      }

      error = false;
    } catch (e) {
      error = true;
    } finally {
      notifyListeners();
    }
  }
}

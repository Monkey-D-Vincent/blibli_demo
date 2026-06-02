import 'package:feature_home/src/components/main/daily/model/daily_list_model.dart';
import 'package:feature_home/src/components/main/daily/model/home_daily_model.dart';
import 'package:feature_home/src/components/main/daily/repository/home_daily_repository.dart';
import 'package:flutter/cupertino.dart';

class HomeDailyProvider extends ChangeNotifier {

  bool isLoading = false;
  bool error = false;
  String nextPageUrl = "";
  List<DailyListModel> daily = [];

  Future<bool> getData(bool isRefresh) async {
    if(isRefresh) {
      nextPageUrl = "";
      isLoading = true;
      daily = [];
      notifyListeners();
    }

    try{
      final HomeDailyModel data = await HomeDailyRepository.getData(pageNextUrl: nextPageUrl);
      List<ItemList> itemList = data.itemList ?? [];
      for (var item in itemList) {
        if (item.type == "textCard") {
          DailyListModel video = DailyListModel(
            title: item.data?.text ?? "",
            list: [],
          );
          daily.add(video);
        } else if ("followCard" == item.type) {
          // 视频
          if (daily.isNotEmpty) {
            daily.last.list.add(item.data?.content?.data as ContentData);
          }
        }
      }

      isLoading = false;
      error = false;
      nextPageUrl = data.nextPageUrl ?? "";
      bool isMore = nextPageUrl.isEmpty;
      return isMore;
    } catch(e) {
      error = true;
      return true;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

}
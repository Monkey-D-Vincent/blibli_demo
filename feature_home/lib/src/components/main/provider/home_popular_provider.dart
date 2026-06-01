import 'package:feature_home/src/components/main/repository/home_popular_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:lib_shared/lib_shared.dart';

class HomePopularProvider extends ChangeNotifier {
  bool isLoading = false;
  bool error = false;
  String nextPageUrl = "";
  List<PurpleCover> banner = [];
  List<VideoItemData> videos = [];

  Future<bool> getData(bool isRefresh) async {
    if (isRefresh) {
      nextPageUrl = "";
      isLoading = true;
      banner.clear();
      videos.clear();
      notifyListeners();
    }

    try {
      final HomeRecommendModel data =
          await HomePopularRepository.getRecommendData(
            pageNextUrl: nextPageUrl,
          );

      List<HomeRecommendModelItemList> items = data.itemList ?? [];
      for (var item in items) {
        if (item.type == "followCard") {
          if (isRefresh) {
            banner.add(item.data?.content?.data?.cover as PurpleCover);
          }
        } else if (item.type == "textCard") {
          VideoItemData video = VideoItemData(
            title: item.data?.text ?? "",
            videos: [],
          );
          videos.add(video);
        } else if ("videoSmallCard" == item.type) {
          // 视频
          if (videos.isNotEmpty) {
            videos.last.videos.add(item.data as PurpleData);
          }
        }
      }

      isLoading = false;
      error = false;
      nextPageUrl = data.nextPageUrl ?? "";
      bool isMore = nextPageUrl.isEmpty;
      return isMore;
    } catch (e) {
      error = true;
      return true;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}

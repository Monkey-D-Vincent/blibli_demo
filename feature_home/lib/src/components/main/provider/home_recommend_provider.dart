import 'dart:math';

import 'package:feature_home/src/components/main/model/home_recommend_model.dart';
import 'package:feature_home/src/components/main/model/video_category_model.dart';
import 'package:feature_home/src/components/main/repository/home_recommend_repository.dart';
import 'package:flutter/cupertino.dart';

class HomeRecommendProvider extends ChangeNotifier {
  bool isLoading = false;
  bool error = false;

  late HomeRecommendModel model;
  String nextPageUrl = "";
  List<DataItemList> banner = [];
  List<VideoCategoryModel> videoCategories = [];
  List<String> images = [];

  Future<bool> getHomeData(bool isRefresh) async {
    if (isLoading) {
      return false;
    }
    if (nextPageUrl.isEmpty) {
      isLoading = true;
    }
    error = false;
    notifyListeners();

    if (isRefresh) {
      nextPageUrl = "";
      banner.clear();
      videoCategories.clear();
    }

    try {
      // 添加热门数据
      model = await HomeRecommendRepository.getRecommendData(
        pageNextUrl: nextPageUrl,
      );
      List<HomeRecommendModelItemList> data = model.itemList ?? [];
      for (var item in data) {
        if ("horizontalScrollCard" == item.type) {
          // banner
          banner.addAll(item.data?.itemList ?? []);
        } else if ("textHeader" == item.type) {
          // 标题
          if (item.data is PurpleData) {
            VideoCategoryModel videoCategory = VideoCategoryModel(
              title: item.data?.text ?? "",
              videos: [],
            );
            videoCategories.add(videoCategory);
          }
        } else if ("video" == item.type) {
          // 视频
          if (videoCategories.isNotEmpty) {
            videoCategories.last.videos.add(item.data as PurpleData);
          }
        }
      }
      images = _getAnimeImages(banner.length);
      print('${videoCategories.length}, ${banner.length}');
      isLoading = false;
      error = false;
      nextPageUrl = model.nextPageUrl ?? "";
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

  List<String> _getAnimeImages(int length) {
    final List<String> imagePool = [
      'https://acg.yaohud.cn/dm/adaptive.php?img=1',
      'https://acg.yaohud.cn/dm/adaptive.php?img=2',
      'https://acg.yaohud.cn/dm/adaptive.php?img=3',
      'https://acg.yaohud.cn/dm/adaptive.php?img=4',
      'https://acg.yaohud.cn/dm/adaptive.php?img=5',
      'https://acg.yaohud.cn/dm/adaptive.php?img=6',
      'https://acg.yaohud.cn/dm/adaptive.php?img=7',
      'https://acg.yaohud.cn/dm/adaptive.php?img=8',
      'https://acg.yaohud.cn/dm/adaptive.php?img=9',
      'https://acg.yaohud.cn/dm/adaptive.php?img=10',
      'https://acg.yaohud.cn/dm/adaptive.php?img=11',
      'https://acg.yaohud.cn/dm/adaptive.php?img=12',
      'https://acg.yaohud.cn/dm/adaptive.php?img=13',
      'https://acg.yaohud.cn/dm/adaptive.php?img=14',
      'https://acg.yaohud.cn/dm/adaptive.php?img=15',
      'https://acg.yaohud.cn/dm/adaptive.php?img=16',
      'https://acg.yaohud.cn/dm/adaptive.php?img=17',
      'https://acg.yaohud.cn/dm/adaptive.php?img=18',
      'https://acg.yaohud.cn/dm/adaptive.php?img=19',
      'https://acg.yaohud.cn/dm/adaptive.php?img=20',
    ];

    final random = Random();
    final List<String> result = [];

    // 先打乱顺序，取不重复的
    List<String> tempPool = List.from(imagePool)..shuffle(random);

    // 先取不重复的
    for (int i = 0; i < length; i++) {
      if (i < tempPool.length) {
        result.add(tempPool[i]);
      } else {
        // 超过 20 张，随机从池子里抽取
        result.add(imagePool[random.nextInt(imagePool.length)]);
      }
    }

    return result;
  }

  final List<String> _animeImagePool = [
    "https://acg.yaohud.cn/dm/adaptive.php?img=1",
    "https://acg.yaohud.cn/dm/adaptive.php?img=2",
    "https://acg.yaohud.cn/dm/adaptive.php?img=3",
    "https://acg.yaohud.cn/dm/adaptive.php?img=4",
    "https://acg.yaohud.cn/dm/adaptive.php?img=5",
    "https://acg.yaohud.cn/dm/adaptive.php?img=6",
    "https://acg.yaohud.cn/dm/adaptive.php?img=7",
    "https://acg.yaohud.cn/dm/adaptive.php?img=8",
    "https://acg.yaohud.cn/dm/adaptive.php?img=9",
    "https://acg.yaohud.cn/dm/adaptive.php?img=10",
    "https://acg.yaohud.cn/dm/adaptive.php?img=11",
    "https://acg.yaohud.cn/dm/adaptive.php?img=12",
    "https://acg.yaohud.cn/dm/adaptive.php?img=13",
    "https://acg.yaohud.cn/dm/adaptive.php?img=14",
    "https://acg.yaohud.cn/dm/adaptive.php?img=15",
    "https://acg.yaohud.cn/dm/adaptive.php?img=16",
    "https://acg.yaohud.cn/dm/adaptive.php?img=17",
    "https://acg.yaohud.cn/dm/adaptive.php?img=18",
    "https://acg.yaohud.cn/dm/adaptive.php?img=19",
    "https://acg.yaohud.cn/dm/adaptive.php?img=20",
  ];

  String getRandomAnimeImage() {
    final Random random = Random();
    int index = random.nextInt(_animeImagePool.length - 1);
    return _animeImagePool[index];
  }
}

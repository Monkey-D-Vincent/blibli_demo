import 'package:feature_home/src/components/main/home_daily_page.dart';
import 'package:feature_home/src/components/main/home_other_page.dart';
import 'package:feature_home/src/components/main/home_popular_page.dart';
import 'package:feature_home/src/components/main/home_recommend_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:feature_home/src/pages/main/model/home_titles_model.dart';
import '../repository/home_repository.dart';

class HomePageProvider extends ChangeNotifier {
  List<HomeTitlesModel> tabs = [];
  List<Widget> pages = [];
  List<String> titles = [];
  bool isLoading = true;
  bool error = false;

  Future<void> fetchTabs() async {
    isLoading = true;
    error = false;
    notifyListeners();

    try {
      // 添加热门数据
      tabs = await HomeRepository.getHomeCategoryList();
      // 1. 定义要添加的数据列表
      final List<HomeTitlesModel> newItems = [
        HomeTitlesModel(id: "0", name: "推荐", description: "", bgPicture: ""),
        HomeTitlesModel(id: "1", name: "发现", description: "", bgPicture: ""),
        HomeTitlesModel(id: "2", name: "日报", description: "", bgPicture: ""),
      ];

      // 2. 将整个列表插入到 tabs 的索引 0 处
      tabs.insertAll(0, newItems);
      // 类型
      titles = tabs.map((item) => item.name ?? "").toList();
      // 页数
      List<Widget> tempPages = [];
      for (int i = 0; i < tabs.length; i++) {
        if (i == 0) {
          tempPages.add(const HomeRecommendPage());
        } else if (i == 1) {
          tempPages.add(const HomePopularPage());
        } else if (i == 2) {
          tempPages.add(const HomeDailyPage());
        } else {
          tempPages.add(HomeOtherPage(categoryId: tabs[i].id ?? ""));
        }
      }
      pages = tempPages;
      error = false;
    } catch (e) {
      error = true;
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}

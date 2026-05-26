import 'package:blibli_demo/components/home/home_other_page.dart';
import 'package:blibli_demo/components/home/home_recommend_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:blibli_demo/pages/home/model/home_titles_model.dart';
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
      final hotItem = HomeTitlesModel(
        id: "0",
        name: "热门",
        description: "",
        bgPicture: "",
      );

      tabs.insert(0, hotItem);
      // 类型
      titles = tabs.map((item) => item.name ?? "").toList();
      // 页数
      List<Widget> tempPages = [];
      for (int i = 0; i < tabs.length; i++) {
        if (i == 0) {
          tempPages.add(const HomeRecommendPage());
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
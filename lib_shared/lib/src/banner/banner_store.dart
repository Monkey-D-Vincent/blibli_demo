import 'package:flutter/cupertino.dart';
import 'package:lib_shared/src/banner/banner_data.dart';

class BannerStore with ChangeNotifier {
  BannerData? bannerData;

  void notify() => notifyListeners();

  void clear() {
    bannerData = null;
    notifyListeners();
  }
}
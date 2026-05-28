import 'package:flutter/cupertino.dart';
import 'package:lib_shared/src/banner/banner_data.dart';

/// get 解决接收端判空
/// set 解决赋值端出现问题
class BannerStore with ChangeNotifier {
  BannerData? _bannerData;
  bool get hasData => _bannerData != null;
  BannerData get bannerData => _bannerData!;

  set bannerData(BannerData? data) {
    _bannerData = data;
    notifyListeners();
  }
}
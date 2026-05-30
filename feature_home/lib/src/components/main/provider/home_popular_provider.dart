import 'package:flutter/cupertino.dart';
import 'package:lib_shared/lib_shared.dart';

class HomePopularProvider extends ChangeNotifier {

  bool isLoading = false;
  List<DataItemList> banner = [];
  List<DataItemList> list = [];

  Future<void> getData() async {

  }

}
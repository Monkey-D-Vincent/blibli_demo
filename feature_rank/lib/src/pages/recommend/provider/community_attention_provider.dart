import 'package:feature_rank/src/pages/attention/model/community_attention_model.dart';
import 'package:feature_rank/src/pages/recommend/repository/community_attention_repository.dart';
import 'package:flutter/cupertino.dart';

class CommunityAttentionProvider extends ChangeNotifier {
  bool isLoading = false;
  bool error = false;
  String nextPageUrl = "";
  List<ContentData> list = [];

  Future<bool> getData(bool isRefresh) async {
    if (isRefresh) {
      nextPageUrl = "";
      isLoading = true;
      list.clear();
      notifyListeners();
    }

    try {
      final CommunityAttentionModel data =
          await CommunityAttentionRepository.getData(pageNextUrl: nextPageUrl);
      List<CommunityAttentionModelItemList> itemList = data.itemList ?? [];
      for (var item in itemList) {
        if (item.type == "communityColumnsCard") {
          final rawData = item.data?.content?.data;
          if (rawData is ContentData) {
            list.add(rawData);
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

import 'package:cached_network_image/cached_network_image.dart';
import 'package:feature_rank/src/pages/recommend/model/community_recommend_model.dart';
import 'package:feature_rank/src/pages/recommend/provider/community_recommend_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class CommunityRecommendListWidget extends StatefulWidget {
  const CommunityRecommendListWidget({super.key});

  @override
  State<CommunityRecommendListWidget> createState() =>
      _CommunityRecommendListWidgetState();
}

class _CommunityRecommendListWidgetState
    extends State<CommunityRecommendListWidget>
    with AutomaticKeepAliveClientMixin {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Consumer<CommunityRecommendProvider>(
      builder: (_, provider, __) {
        return MasonryGridView.count(
          padding: EdgeInsets.zero,
          controller: _scrollController,
          // 设置列数
          crossAxisCount: 2,
          // 垂直间距
          mainAxisSpacing: 0,
          // 水平间距
          crossAxisSpacing: 0,
          // 数据总数
          itemCount: provider.list.length,
          itemBuilder: (context, index) {
            return KeyedSubtree(
              key: ValueKey(provider.list[index].id),
              child: _recommendItem(context, provider.list[index]),
            );
          },
        );
      },
    );
  }

  Widget _recommendItem(BuildContext context, ContentData item) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: AspectRatio(
                  aspectRatio: (item.width ?? 1) / (item.height ?? 1),
                  child: CachedNetworkImage(
                    imageUrl: item.cover?.detail ?? "",
                    imageBuilder: (_, imageProvider) {
                      return Image(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 130,
                      );
                    },
                    fadeInDuration: Duration.zero,
                    fadeOutDuration: Duration.zero,
                    placeholderFadeInDuration: Duration.zero,
                    placeholder: (context, url) => const SizedBox.shrink(),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                item.description ?? "11",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14, color: const Color(0xff333333)),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      imageUrl: item.owner?.avatar ?? "",
                      imageBuilder: (_, imageProvider) {
                        return Image(
                          image: imageProvider,
                          fit: BoxFit.cover,
                          width: 20,
                          height: 20,
                        );
                      },
                      placeholder: (context, url) => const SizedBox.shrink(),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      item.owner?.nickname ?? "",
                      style: TextStyle(
                        color: const Color(0xff999999),
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

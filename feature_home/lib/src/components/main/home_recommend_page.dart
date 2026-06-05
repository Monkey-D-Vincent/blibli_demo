import 'package:common/common.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:feature_home/src/components/main/provider/home_recommend_provider.dart';
import 'package:flutter/material.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';
import 'package:ui_components/ui_components.dart';

class HomeRecommendPage extends StatefulWidget {
  const HomeRecommendPage({super.key});

  @override
  State<HomeRecommendPage> createState() => _HomeRecommendPageState();
}

class _HomeRecommendPageState extends State<HomeRecommendPage>
    with AutomaticKeepAliveClientMixin {
  late HomeRecommendProvider _provider;

  @override
  void initState() {
    super.initState();
    _provider = HomeRecommendProvider();
    _provider.getHomeData(true);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return ChangeNotifierProvider.value(
      value: _provider,
      child: Consumer<HomeRecommendProvider>(
        builder: (context, provider, child) {
          return _buildBody(context, provider);
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context, HomeRecommendProvider provider) {
    if (provider.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (provider.error) {
      return const Center(child: Text("加载失败"));
    }

    return EasyRefresh(
      header: ClassicHeader(
        dragText: '下拉刷新',
        armedText: '释放刷新',
        readyText: '正在刷新...',
        processingText: '刷新中...',
        processedText: '刷新完成',
      ),
      footer: ClassicFooter(dragText: '上拉加载', readyText: '加载中...'),
      onRefresh: () async {
        _provider.getHomeData(true);
        return IndicatorResult.success;
      },
      onLoad: () async {
        if (provider.isLoading) {
          return IndicatorResult.none;
        }
        bool isMore = await _provider.getHomeData(false);
        return isMore ? IndicatorResult.noMore : IndicatorResult.success;
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomScrollView(
          slivers: [
            // banner
            SliverToBoxAdapter(child: BannerState()),
            // 列表
            ...provider.videoCategories.map((item) {
              return _videoItems(context, item);
            }),
          ],
        ),
      ),
    );
  }

  Widget _videoItems(BuildContext context, VideoItemData item) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 15),
      sliver: DecoratedSliver(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        sliver: SliverPadding(
          padding: const EdgeInsets.all(10),
          sliver: SliverMainAxisGroup(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  margin: EdgeInsets.only(bottom: 10),
                  width: double.infinity,
                  color: Colors.white,
                  child: Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 16,
                      color: const Color(0xFF333333),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SliverGrid.builder(
                itemCount: item.videos.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1.25, // item 比例   宽/高
                ),
                itemBuilder: (context, position) {
                  return InkWell(
                    onTap: () {
                      if (item.videos[position].playUrl != null &&
                          item.videos[position].playUrl!.isNotEmpty) {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => VideoDetailPage(
                              url: item.videos[position].playUrl ?? "",
                              id: int.parse(item.videos[position].id ?? "-1"),
                            ),
                          ),
                        );
                      } else {
                        ToastUtil.showToast(context, "视频链接不合法");
                      }
                    },
                    child: VideoItemState(item: item.videos[position]),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _provider.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive => true;
}

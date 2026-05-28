import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:common/common.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:feature_home/src/components/main/model/video_category_model.dart';
import 'package:feature_home/src/components/main/provider/home_recommend_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_components/ui_components.dart';

class HomeRecommendPage extends StatefulWidget {
  const HomeRecommendPage({super.key});

  @override
  State<HomeRecommendPage> createState() => _HomeRecommendPageState();
}

class _HomeRecommendPageState extends State<HomeRecommendPage> {
  late HomeRecommendProvider _provider;

  @override
  void initState() {
    super.initState();
    _provider = HomeRecommendProvider();
    _provider.getHomeData(true);
  }

  @override
  Widget build(BuildContext context) {
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
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    if (provider.error) {
      return const Scaffold(body: Center(child: Text("加载失败")));
    }

    return EasyRefresh(
      header: ClassicHeader(
        dragText: '下拉刷新',
        armedText: '释放刷新',
        readyText: '正在刷新...',
        processingText: '刷新中...',
        processedText: '刷新完成',
      ),
      footer: ClassicFooter(
        dragText: '上拉加载',
        readyText: '加载中...',
      ),
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
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerState(),
              ...provider.videoCategories.map((item) {
                return _videosList(context, provider, item);
              }),
            ],
          ),
        ),
      ),
    );
  }

  Widget _videosList(BuildContext context,
      HomeRecommendProvider provider,
      VideoCategoryModel item,) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.only(top: 15),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
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
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: item.videos.length,
            padding: EdgeInsets.only(bottom: 10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.25, // item 比例   宽/高
            ),
            itemBuilder: (context, position) {
              return InkWell(
                onTap: () {
                  ToastUtil.showToast(context, "$position");
                },
                child: Stack(
                  children: [
                    Positioned(
                      child: CachedNetworkImage(
                        imageUrl: provider.getRandomAnimeImage(),
                        imageBuilder: (context, imageProvider) {
                          return Image(
                            image: imageProvider,
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 150,
                          );
                        },
                        placeholder: (context, url) => const SizedBox.shrink(),
                        errorWidget: (context, url, error) =>
                            Image.asset(
                                'assets/images/image_error_default.png'),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }


  @override
  void dispose() {
    _provider.dispose();
    super.dispose();
  }
}

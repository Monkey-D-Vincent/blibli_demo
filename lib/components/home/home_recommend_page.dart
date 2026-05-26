import 'package:blibli_demo/components/home/model/video_category_model.dart';
import 'package:blibli_demo/components/home/provider/home_recommend_provider.dart';
import 'package:blibli_demo/utils/taostu_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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

    return Padding(
      padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            _bannerWidget(context, provider),
            ...provider.videoCategories.map((item) {
              return _videosList(context, provider, item);
            }),
          ],
        ),
      ),
    );
  }

  Widget _videosList(
    BuildContext context,
    HomeRecommendProvider provider,
    VideoCategoryModel item,
  ) {
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
                      child: Image.network(
                        provider.getRandomAnimeImage(),
                        fit: BoxFit.cover,
                        height: 150,
                        width: double.infinity,
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

  Widget _bannerWidget(BuildContext context, HomeRecommendProvider provider) {
    final width = MediaQuery.of(context).size.width;

    return CarouselSlider(
      key: ValueKey(provider.images.length),
      items: List.generate(provider.banner.length, (int index) {
        return Material(
          borderRadius: BorderRadius.circular(15),
          color: Colors.transparent,
          clipBehavior: Clip.hardEdge,
          child: InkWell(
            onTap: () {
              ToastUtil.showToast(context, "${index + 1}");
            },
            child: CachedNetworkImage(
              imageUrl: provider.images[index],
              imageBuilder: (context, imageProvider) {
                return Image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  width: width,
                );
              },
              placeholder: (context, url) => const SizedBox.shrink(),
              errorWidget: (context, url, error) =>
                  Image.asset('assets/images/image_error_default.png'),
            ),
          ),
        );
      }),
      options: CarouselOptions(
        height: 200,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
      ),
    );
  }

  @override
  void dispose() {
    _provider.dispose();
    super.dispose();
  }
}

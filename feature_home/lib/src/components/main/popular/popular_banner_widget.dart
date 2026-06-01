import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:common/common.dart';
import 'package:feature_home/src/components/main/provider/home_popular_provider.dart';
import 'package:flutter/material.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class PopularBannerWidget extends StatefulWidget {
  const PopularBannerWidget({super.key});

  @override
  State<PopularBannerWidget> createState() => _PopularBannerWidgetState();
}

class _PopularBannerWidgetState extends State<PopularBannerWidget> {
  int _currentIndex = 0;
  late CarouselSliderController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CarouselSliderController();
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Selector<HomePopularProvider, List<PurpleCover>>(
        selector: (_, p) => p.banner,
        builder: (_, banner, __) {
          return Stack(
            children: [
              _bannerWidget(context, banner),
              _positionWidget(banner),
            ],
          );
        },
      ),
    );
  }

  Widget _bannerWidget(BuildContext context, List<PurpleCover> banner) {
    final width = MediaQuery.of(context).size.width;

    return Positioned(
      child: CarouselSlider(
        carouselController: _controller,
        key: ValueKey(banner.length),
        items: List.generate(banner.length, (
            int index,
            ) {
          return Material(
            borderRadius: BorderRadius.circular(15),
            color: Colors.transparent,
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              onTap: () {
                ToastUtil.showToast(context, "${index + 1}");
              },
              child: CachedNetworkImage(
                imageUrl: banner[index].detail ?? "",
                imageBuilder: (context, imageProvider) {
                  return Image(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    width: width,
                  );
                },
                placeholder: (context, url) =>
                const SizedBox.shrink(),
              ),
            ),
          );
        }),
        options: CarouselOptions(
          scrollPhysics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          height: 200,
          viewportFraction: 1,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          onPageChanged: (int index, reason) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }

  Widget _positionWidget(List<PurpleCover> banner) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: SizedBox(
        height: 20,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(banner.length, (
            int index,
          ) {
            return GestureDetector(
              onTap: () {
                _controller.jumpToPage(_currentIndex);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                margin: EdgeInsets.symmetric(horizontal: 3),
                width: index == _currentIndex ? 20 : 8,
                height: 4,
                decoration: BoxDecoration(
                  color: index == _currentIndex
                      ? Colors.white
                      : Colors.white.withAlpha(110),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

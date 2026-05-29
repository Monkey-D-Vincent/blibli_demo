import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:lib_shared/lib_shared.dart';

class BannerState extends StatefulWidget {
  const BannerState({super.key});

  @override
  State<BannerState> createState() => _BannerStateState();
}

class _BannerStateState extends State<BannerState> {
  final _bannerStore = GetIt.instance<BannerStore>();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ListenableBuilder(
      listenable: _bannerStore,
      builder: (context, _) {
        return CarouselSlider(
          key: ValueKey(_bannerStore.bannerData.images.length),
          items: List.generate(_bannerStore.bannerData.images.length, (int index) {
            return Material(
              borderRadius: BorderRadius.circular(15),
              color: Colors.transparent,
              clipBehavior: Clip.hardEdge,
              child: InkWell(
                onTap: () {
                  ToastUtil.showToast(context, "${index + 1}");
                },
                child: CachedNetworkImage(
                  imageUrl: _bannerStore.bannerData.images[index],
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
            autoPlayInterval: const Duration(seconds: 3),
          ),
        );
      },
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:feature_home/src/components/main/provider/home_popular_provider.dart';
import 'package:flutter/material.dart';
import 'package:lib_shared/lib_shared.dart';
import 'package:provider/provider.dart';

class PopularListWidget extends StatelessWidget {
  const PopularListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final videos = context.watch<HomePopularProvider>().videos;
    return SliverMainAxisGroup(
      slivers: [
        ...videos
            .where((item) => item.videos.isNotEmpty)
            .map((item) => _itemWidget(context, item)),
      ],
    );
  }

  Widget _itemWidget(BuildContext context, VideoItemData item) {
    return SliverPadding(
      padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      sliver: DecoratedSliver(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        sliver: SliverPadding(
          padding: EdgeInsets.all(10),
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
                  return Material(
                    child: InkWell(
                      onTap: () {},
                      child: Ink(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: _videoItemWidget(context, item.videos[position]),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _videoItemWidget(BuildContext context, PurpleData item) {
    return Stack(
      children: [
        Positioned(
          child: CachedNetworkImage(
            imageUrl: item.cover?.detail ?? "",
            imageBuilder: (context, imageProvider) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: imageProvider,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 150,
                ),
              );
            },
            placeholder: (context, url) => const SizedBox.shrink(),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withAlpha(0),
                  Colors.black.withAlpha(179), // 0 - 255
                ],
              ),
            ),
            child: Text(
              item.title ?? "",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 10, color: Colors.white),
            ),
          ),
        ),
        Positioned(
          right: -5,
          top: -5,
          child: InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(
                Icons.star,
                color: item.collected ?? false
                    ? Colors.orangeAccent
                    : Colors.grey,
                size: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

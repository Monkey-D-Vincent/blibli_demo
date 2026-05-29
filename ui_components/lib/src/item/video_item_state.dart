import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:lib_shared/lib_shared.dart';

class VideoItemState extends StatefulWidget {
  final VideoItemData item;

  const VideoItemState({super.key, required this.item});

  @override
  State<VideoItemState> createState() => _VideoItemStateState();
}

class _VideoItemStateState extends State<VideoItemState> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: CachedNetworkImage(
            imageUrl: getRandomAnimeImage(),
            imageBuilder: (context, imageProvider) {
              return Image(
                image: imageProvider,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              );
            },
            placeholder: (context, url) =>
            const SizedBox.shrink(),
            errorWidget: (context, url, error) => Image.asset(
              'assets/images/image_error_default.png',
            ),
          ),
        ),
      ],
    );
  }

  final List<String> _animeImagePool = [
    "https://acg.yaohud.cn/dm/adaptive.php?img=1",
    "https://acg.yaohud.cn/dm/adaptive.php?img=2",
    "https://acg.yaohud.cn/dm/adaptive.php?img=3",
    "https://acg.yaohud.cn/dm/adaptive.php?img=4",
    "https://acg.yaohud.cn/dm/adaptive.php?img=5",
    "https://acg.yaohud.cn/dm/adaptive.php?img=6",
    "https://acg.yaohud.cn/dm/adaptive.php?img=7",
    "https://acg.yaohud.cn/dm/adaptive.php?img=8",
    "https://acg.yaohud.cn/dm/adaptive.php?img=9",
    "https://acg.yaohud.cn/dm/adaptive.php?img=10",
    "https://acg.yaohud.cn/dm/adaptive.php?img=11",
    "https://acg.yaohud.cn/dm/adaptive.php?img=12",
    "https://acg.yaohud.cn/dm/adaptive.php?img=13",
    "https://acg.yaohud.cn/dm/adaptive.php?img=14",
    "https://acg.yaohud.cn/dm/adaptive.php?img=15",
    "https://acg.yaohud.cn/dm/adaptive.php?img=16",
    "https://acg.yaohud.cn/dm/adaptive.php?img=17",
    "https://acg.yaohud.cn/dm/adaptive.php?img=18",
    "https://acg.yaohud.cn/dm/adaptive.php?img=19",
    "https://acg.yaohud.cn/dm/adaptive.php?img=20",
  ];

  String getRandomAnimeImage() {
    final Random random = Random();
    int index = random.nextInt(_animeImagePool.length - 1);
    return _animeImagePool[index];
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:lib_video/lib_video.dart';
import 'package:provider/provider.dart';
import 'package:ui_components/src/video/model/video_detail_model.dart';
import 'package:ui_components/src/video/provider/video_detail_provider.dart';
import 'package:ui_components/src/video/video_detail_page.dart';

class VideoDetailWidget extends StatelessWidget {
  final String url;

  const VideoDetailWidget({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return Consumer<VideoDetailProvider>(
      builder: (_, p, __) {
        return Scaffold(
          appBar: AppBar(title: Text("详情"), centerTitle: true),
          body: Column(
            children: [
              AppVideoPlayer(url: url, height: 300),
              Expanded(
                child: ListView.builder(
                  itemCount: p.list.length,
                  itemBuilder: (c, index) {
                    return _videoItemWidget(c, p.list[index]);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _videoItemWidget(BuildContext context, Data item) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              if(item.playUrl != null && item.playUrl!.isNotEmpty) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => VideoDetailPage(url: item.playUrl ?? "", id: item.id ?? -1,),
                  ),
                );
              } else {
                ToastUtil.showToast(context, "视频链接不合法");
              }
            },
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: item.cover?.detail ?? "",
                    imageBuilder: (_, imageProvider) {
                      return Image(
                        image: imageProvider,
                        fit: BoxFit.cover,
                        width: 50,
                        height: 50,
                      );
                    },
                    placeholder: (context, url) => const SizedBox.shrink(),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.title ?? "",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xff333333),
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        item.description ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: const Color(0xff666666)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

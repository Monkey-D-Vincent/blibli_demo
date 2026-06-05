import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ui_components/src/video/component/video_detail_widget.dart';
import 'package:ui_components/src/video/provider/video_detail_provider.dart';

class VideoDetailPage extends StatefulWidget {
  final String url;
  final int id;

  const VideoDetailPage({super.key, required this.url, required this.id});

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => VideoDetailProvider()..getData(id: "${widget.id}"),
      child: VideoDetailWidget(url: widget.url),
    );
  }
}

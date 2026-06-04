import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:lib_player_adapter/lib_player_adapter.dart';
import 'package:video_player/video_player.dart';

class ChewiePlayer implements IVideoPlayer {
  final String url;
  final double height;
  late VideoPlayerController _videoController;
  ChewieController? _chewieController;

  ChewiePlayer({required this.url, required this.height});

  @override
  Future<void> init() async {
    _videoController = VideoPlayerController.networkUrl(Uri.parse(url));
    await _videoController.initialize();
    _chewieController = ChewieController(
      videoPlayerController: _videoController,
      autoPlay: false,
      looping: false,
    );
  }

  @override
  Widget build() {
    if (_chewieController == null) {
      return SizedBox(
        height: height,
        child: const Center(child: CircularProgressIndicator()),
      );
    }

    return SizedBox(
      height: height,
      width: double.infinity,
      child: Chewie(controller: _chewieController!),
    );
  }

  @override
  Future<void> play() async {
    await _videoController.play();
  }

  @override
  Future<void> pause() async {
    await _videoController.pause();
  }

  @override
  Future<void> dispose() async {
    await _videoController.dispose();
    _chewieController?.dispose();
  }
}

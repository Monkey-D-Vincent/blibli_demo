import 'package:flutter/material.dart';
import 'package:lib_player_adapter/lib_player_adapter.dart';

import '../main/player_factory.dart';

class AppVideoPlayer extends StatefulWidget {
  final String url;
  final double height;

  const AppVideoPlayer({super.key, required this.url, required this.height});

  @override
  State<AppVideoPlayer> createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  IVideoPlayer? _player;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  Future<void> _initPlayer() async {
    _player = await PlayerFactory.create(
      url: widget.url,
      height: widget.height,
    );
    if (mounted) {
      setState(() {
        _loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return SizedBox(
        height: widget.height,
        child: const Center(child: CircularProgressIndicator()),
      );
    }
    return _player!.build();
  }

  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }
}

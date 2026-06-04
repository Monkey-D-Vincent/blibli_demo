import 'package:flutter/cupertino.dart';

abstract class IVideoPlayer {
  Future<void> init();

  Widget build();

  Future<void> play();

  Future<void> pause();

  Future<void> dispose();
}

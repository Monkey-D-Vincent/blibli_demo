import 'package:lib_player_adapter/lib_player_adapter.dart';

import '../ui/chewie_player.dart';

class PlayerFactory {
  static Future<IVideoPlayer> create({
    required String url,
    required double height,
  }) async {
    final player = ChewiePlayer(url: url, height: height);
    await player.init();
    return player;
  }
}

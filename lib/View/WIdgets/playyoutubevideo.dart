import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

void showVideoDialog(BuildContext context, String videoURL) {
  final controller = YoutubePlayerController(
    params: const YoutubePlayerParams(
      showControls: true,
      showFullscreenButton: true,
    ),
  );

  controller.loadVideoById(videoId: 'T1LRsp8qBY0');

  showDialog(
    context: context,
    builder: (_) => Dialog(
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: YoutubePlayer(controller: controller),
      ),
    ),
  );
}
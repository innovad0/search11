// Suggested code may be subject to a license. Learn more: ~LicenseLog:3140904469.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:335162715.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:667858206.
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoTest1 extends StatefulWidget {
  const VideoTest1({super.key});

  @override
  State<VideoTest1> createState() => _VideoTest1State();
}

class _VideoTest1State extends State<VideoTest1> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'zdMGlxQdKiE',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Test 1'),
      ),
      body: YoutubePlayer(
        controller: _controller,
        showVideoProgressIndicator: true,
      ),
    );
  }
}

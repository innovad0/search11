
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:search11/data/courses_data.dart';
import 'package:search11/model/course.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoTestPage extends StatefulWidget {
  const VideoTestPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _VideoTestPageState createState() => _VideoTestPageState();
}

class _VideoTestPageState extends State<VideoTestPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: 'DoSP9fQr2TY',
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {


    final courseID = ModalRoute.of(context)!.settings.arguments as String;
    final selectedCourse =
        coursesData.firstWhere((element) => element.id == courseID);


    return Scaffold(
      appBar: appBar(context, selectedCourse),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3607712509.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1756523276.
body: ListView(
  children: [
    Center(
      child: YoutubePlayer(
        
        controller: _controller,
        showVideoProgressIndicator: true,
        progressIndicatorColor: Colors.red,
        progressColors: const ProgressBarColors(
          playedColor: Colors.red,
          handleColor: Colors.redAccent,
        ),
        onReady: () {
          // Perform any additional setup here
        },
      ),    
    ),
    const SizedBox(height: 20),
    

  ],
)

    );
  }


  AppBar appBar(BuildContext context, Course selectedCourse) {
    return AppBar(
      backgroundColor: Colors.grey[100],
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            IconlyLight.arrow_left,
            size: 26,
            color: Colors.black,
          ),
          style: IconButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: Colors.white),
        ),
      ),
      title: const Text(
        "Course Details",
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 28,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: IconButton(
            onPressed: () {},
            icon: (selectedCourse.isBookmarked)
                ? const Icon(
                    IconlyBold.heart,
                    size: 26,
                    color: Colors.black,
                  )
                : const Icon(
                    IconlyLight.heart,
                    size: 26,
                    color: Colors.black,
                  ),
          ),
        )
      ],
    );
  }





}
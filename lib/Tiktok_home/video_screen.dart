import 'package:flutter/material.dart';
import 'package:tiktok_project/Model/video_model.dart';
import 'package:tiktok_project/widgets/video_widget.dart';

class VideoScreen extends StatefulWidget {
   const VideoScreen(
      {super.key, required this.video_model,   this.index=0,
      this.isFollowing = false});
  final List<VideoModel> video_model;
  final bool isFollowing;
  final int index;

  @override
  State<VideoScreen> createState() => _VideoScreenState();
}

class _VideoScreenState extends State<VideoScreen> {

  @override
  void initState() {
   _controller = PageController(initialPage:   widget.index);
    super.initState();
  }
  late PageController _controller;
  bool scrollDetected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        setState(() {
          scrollDetected = !scrollDetected;
          if (scrollDetected = true) {
            _controller
                .nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut)
                .then((value) => scrollDetected = false);
          } else {
            _controller
                .previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut)
                .then((value) => scrollDetected = false);
          }
        });
      },
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        pageSnapping: true,
        controller: _controller,
        itemBuilder: (BuildContext context, int index) {
          return VideoWidget(
            videoList: widget.video_model[index],
            foryou: widget.isFollowing,
          );
        },
      ),
    );
  }
}

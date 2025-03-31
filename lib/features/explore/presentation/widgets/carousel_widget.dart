import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class CarouselWidget extends StatefulWidget {
  final String vidPath;
  const CarouselWidget({required this.vidPath, super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  late VideoPlayerController _controller;
  late Future<void> _initVidPlayerFuture;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.vidPath, videoPlayerOptions: VideoPlayerOptions(mixWithOthers: true));
    _initVidPlayerFuture = _controller.initialize().then((_) {
      _controller.setLooping(true);
      _controller.play();
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
      ),
      margin: EdgeInsets.only(left: 20),
      child: FutureBuilder(
        future: _initVidPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(18.0),
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _controller.value.size.width,
                  height: _controller.value.size.height,
                  child: VideoPlayer(_controller),
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

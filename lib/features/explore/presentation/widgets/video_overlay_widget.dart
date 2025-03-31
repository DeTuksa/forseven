import 'package:flutter/material.dart';
import 'package:forseven/services/video_manager.dart';
import 'package:video_player/video_player.dart';

class VideoAnimationOverlay extends StatefulWidget {
  final bool animated;
  final String data;
  const VideoAnimationOverlay({super.key, required this.animated, required this.data});

  @override
  State<VideoAnimationOverlay> createState() => _VideoAnimationOverlayState();
}

class _VideoAnimationOverlayState extends State<VideoAnimationOverlay> {

  int pageIndex = 0;
  VideoPlayerController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoManager().getController(widget.data);
    _controller?.play();
  }

  @override
  void dispose() {
    _controller?.pause();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: widget.animated ? MediaQuery.of(context).size.width : 0,
      height: widget.animated ? MediaQuery.of(context).size.width : 0,
      color: Color.fromRGBO(25, 25, 25, 0.8),
      duration: Duration(milliseconds: 300),
      child: widget.animated ? Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: _controller!.value.size.width,
              height: _controller!.value.size.height,
              child: VideoPlayer(_controller!),
            ),
          ),
        ],
      ) : SizedBox(),
    );
  }
}
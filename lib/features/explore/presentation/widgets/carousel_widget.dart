import 'package:flutter/material.dart';
import 'package:forseven/services/video_manager.dart';
import 'package:video_player/video_player.dart';

class CarouselWidget extends StatefulWidget {
  final String vidPath;
  const CarouselWidget({required this.vidPath, super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> with AutomaticKeepAliveClientMixin {
  VideoPlayerController? _controller;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    _controller = VideoManager().getController(widget.vidPath);
    _controller?.play();
  }

  @override
  void dispose() {
    _controller?.pause();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Container(
      width: 150,
      height: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.0),
      ),
      margin: EdgeInsets.only(left: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18.0),
        child: _controller != null && _controller!.value.isInitialized
            ? FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: _controller!.value.size.width,
            height: _controller!.value.size.height,
            child: VideoPlayer(_controller!),
          ),
        )
            : Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

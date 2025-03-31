import 'package:video_player/video_player.dart';

class VideoManager {
  static final VideoManager _instance = VideoManager._internal();
  factory VideoManager() => _instance;

  VideoManager._internal();

  final Map<String, VideoPlayerController> _controllers = {};

  Future<void> preloadVideos(List<String> videoPaths) async {
    for (var path in videoPaths) {
      if (!_controllers.containsKey(path)) {
        final controller = VideoPlayerController.asset(path, videoPlayerOptions: VideoPlayerOptions(
          mixWithOthers: true
        ));
        await controller.initialize();
        controller.setLooping(true);
        _controllers[path] = controller;
      }
    }
  }

  VideoPlayerController? getController(String path) => _controllers[path];

  void disposeAll() {
    for (var controller in _controllers.values) {
      controller.dispose();
    }
    _controllers.clear();
  }
}

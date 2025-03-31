import 'package:flutter/material.dart';
import 'package:forseven/core/config/routes/app_pages.dart';
import 'package:forseven/core/constants/image_paths.dart';
import 'package:forseven/core/themes/theme.dart';
import 'package:forseven/services/video_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await VideoManager().preloadVideos([
    ImagePaths.video1,
    ImagePaths.video2,
    ImagePaths.video3,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Forseven EV',
      theme: ForsevenTheme.lightTheme,
      routerConfig: AppPages.routes,
    );
  }
}

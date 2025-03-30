import 'package:flutter/material.dart';
import 'package:forseven/core/constants/image_paths.dart';
import 'package:forseven/core/themes/theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ForsevenTheme.primary,
      body: Center(
        child: Image.asset(
          ImagePaths.forsevenLogo
        ),
      ),
    );
  }
}

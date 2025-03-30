import 'dart:async';

import 'package:flutter/material.dart';
import 'package:forseven/core/config/routes/app_routes.dart';
import 'package:forseven/core/constants/image_paths.dart';
import 'package:forseven/core/themes/theme.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  customTimer() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, () async {
      context.pushReplacementNamed(AppRoutes.chooseMarketScreen);
    });
  }

  @override
  void initState() {
    customTimer();
    super.initState();
  }

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

import 'package:forseven/core/config/routes/app_routes.dart';
import 'package:forseven/features/onboarding/presentation/choose_market.dart';
import 'package:forseven/features/onboarding/presentation/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppPages {
  AppPages._();

  static final GoRouter routes = GoRouter(
    initialLocation: Paths.splashScreen,
    routes: [
      GoRoute(
        name: Paths.splashScreen,
        path: Paths.splashScreen,
        builder: (context, state) => const SplashScreen()
      ),
      GoRoute(
        name: Paths.chooseMarketScreen,
        path: Paths.chooseMarketScreen,
        builder: (context, state) => const ChooseMarketScreen()
      )
    ]
  );
}
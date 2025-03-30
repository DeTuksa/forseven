abstract class Paths {
  static const splashScreen = "/splash-screen";
  static const chooseMarketScreen = "/choose-market-screen";
  static const analyticsScreen = "/analytics-screen";
}

abstract class AppRoutes {
  AppRoutes._();

  static const splashScreen = Paths.splashScreen;
  static const chooseMarketScreen = Paths.chooseMarketScreen;
  static const analyticsScreen = Paths.analyticsScreen;
}
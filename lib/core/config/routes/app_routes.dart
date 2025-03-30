abstract class Paths {
  static const splashScreen = "/splash-screen";
  static const chooseMarketScreen = "/choose-market-screen";
  static const analyticsScreen = "/analytics-screen";
  static const termsAndConditionsScreen = "/terms-and-conditions-screen";
  static const landingScreen = "/landing-screen";
}

abstract class AppRoutes {
  AppRoutes._();

  static const splashScreen = Paths.splashScreen;
  static const chooseMarketScreen = Paths.chooseMarketScreen;
  static const analyticsScreen = Paths.analyticsScreen;
  static const termsAndConditionsScreen = Paths.termsAndConditionsScreen;
  static const landingScreen = Paths.landingScreen;
}
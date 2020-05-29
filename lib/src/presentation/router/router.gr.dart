// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:own_it/src/presentation/screen/sign_in/sign_in_screen.dart';
import 'package:own_it/src/presentation/screen/splash_screen.dart';
import 'package:own_it/src/presentation/screen/sign_up/personal_detail.dart';

abstract class Routes {
  static const signInScreen = '/';
  static const splashScreen = '/splash-screen';
  static const personalDeatail = '/personal-deatail';
  static const all = {
    signInScreen,
    splashScreen,
    personalDeatail,
  };
}

class Router extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Router>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.signInScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SignInScreen(),
          settings: settings,
        );
      case Routes.splashScreen:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SplashScreen(),
          settings: settings,
        );
      case Routes.personalDeatail:
        return MaterialPageRoute<dynamic>(
          builder: (context) => PersonalDeatail(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

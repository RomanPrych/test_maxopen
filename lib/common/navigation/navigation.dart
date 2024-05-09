import 'package:flutter/material.dart';
import 'package:test_maxopen/common/navigation/args/main_arg.dart';
import 'names.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class Navigation {
  static pop() => Navigator.of(navigatorKey.currentContext!).pop();

  static popUntil(String route) => Navigator.of(navigatorKey.currentContext!)
      .popUntil(ModalRoute.withName(route));

  static openMainPage({
    required bool isInternet,
    required bool isGeolocationAsses,
    required String name,
  }) =>
      Navigator.of(navigatorKey.currentContext!).pushReplacementNamed(mainScreen,
          arguments: MainArg(
            isInternet: isInternet,
            isGeolocationAsses: isGeolocationAsses, name: name,
          ));
}

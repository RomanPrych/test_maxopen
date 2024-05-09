import 'package:flutter/material.dart';
import 'package:test_maxopen/common/navigation/args/main_arg.dart';
import 'package:test_maxopen/common/navigation/names.dart';
import 'package:test_maxopen/ui/home/home_module.dart';
import 'package:test_maxopen/ui/login/login_module.dart';

Widget getScreen(String? name, {Object? arguments}) {
  switch (name) {
    case loginScreen:
      return const LoginModule();

    case mainScreen:
      final args = arguments as MainArg;
      return HomeModule(
        name: args.name,
        isInternet: args.isInternet,
        isGeolocationAsses: args.isGeolocationAsses,
      );

    default:
      return const SizedBox.shrink();
  }
}

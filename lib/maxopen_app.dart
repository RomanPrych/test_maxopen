import 'package:flutter/material.dart';
import 'package:test_maxopen/common/app_theme.dart';
import 'package:test_maxopen/common/navigation/names.dart';
import 'package:test_maxopen/common/navigation/navigation.dart';
import 'package:test_maxopen/common/navigation/route.dart';
import 'package:test_maxopen/common/navigation/screens.dart';

class MaxopenApp extends StatelessWidget {
  const MaxopenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        loginScreen: (BuildContext context) => getScreen(loginScreen),
      },
      navigatorKey: navigatorKey,
      initialRoute: loginScreen,
      onGenerateRoute: (settings) => getPageRoute(settings.name ?? '/', arguments: settings.arguments),
      debugShowCheckedModeBanner: false,
      theme: AppTheme.getTheme(),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:test_maxopen/common/app_theme.dart';
import 'package:test_maxopen/common/navigation/navigation.dart';

void msgToast(String msg, {Color? color, int? milliseconds}) {
  ScaffoldMessenger.of(navigatorKey.currentContext!).showSnackBar(
    SnackBar(
      backgroundColor: color ?? AppTheme.red,
      content: Text(
        msg,
        textAlign: TextAlign.center,
      ),
      duration: Duration(milliseconds: milliseconds ?? 2500),
    ),
  );
}
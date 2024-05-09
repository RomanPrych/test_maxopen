import 'package:flutter/material.dart';
import 'package:test_maxopen/common/di/di.dart';
import 'package:test_maxopen/maxopen_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MaxopenApp());
}

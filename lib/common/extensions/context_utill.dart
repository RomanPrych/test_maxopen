import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

const _phoneShortSideThreshold = 420.0;

extension ContextUtils on BuildContext {
  Size get screenSize => MediaQuery.of(this).size;

  Orientation get orientation => MediaQuery.of(this).orientation;

  bool get isLandscapeOrientation => orientation == Orientation.landscape;

  bool get isPortraitOrientation => orientation == Orientation.portrait;

  Brightness get platformBrightness => MediaQuery.of(this).platformBrightness;

  double get textScaleFactor => MediaQuery.of(this).textScaleFactor;

  double get screenShortestSide => screenSize.shortestSide;

  bool get isPhone => screenShortestSide < _phoneShortSideThreshold;

  bool get isDesktop => kIsWeb? true : Platform.isMacOS || Platform.isWindows || Platform.isLinux;

  bool get isKeyboardShown => MediaQuery.of(this).viewInsets.bottom > 0;

  bool get isAndroid => kIsWeb? false : Platform.isAndroid;

  bool get isIOS => kIsWeb? false : Platform.isIOS;

  bool get isWeb => kIsWeb;

  bool get isMobile => !kIsWeb && (Platform.isIOS || Platform.isAndroid);

  bool get isPortrait => screenSize.height > screenSize.width;
}


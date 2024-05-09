import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_maxopen/ui/home/home_screen.dart';
import 'package:test_maxopen/ui/home/provider/home_provider.dart';

class HomeModule extends StatelessWidget {
  const HomeModule({
    required this.isInternet,
    required this.isGeolocationAsses,
    required this.name,
    super.key,
  });

  final bool isInternet;
  final bool isGeolocationAsses;
  final String name;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeProvider(isInternet, isGeolocationAsses),
      child: HomeScreen(
        name: name,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_maxopen/common/extensions/double_extension.dart';
import 'package:test_maxopen/ui/home/provider/home_provider.dart';
import 'package:test_maxopen/ui/home/widgets/add_car_widget.dart';
import 'package:test_maxopen/ui/home/widgets/appbar_home.dart';
import 'package:test_maxopen/ui/home/widgets/bottom_bar_widget.dart';
import 'package:test_maxopen/ui/home/widgets/map_widget.dart';
import 'package:test_maxopen/widgets/button_simple.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, value, child) {
        return Scaffold(
          appBar: const AppBarHome(),
          body: SafeArea(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AddCarWidget(
                  name: name,
                ),
                25.0.hsb,
                MapWidget(
                  coordinates: value.state.coordinates,
                  mapController: value.state.mapController,
                  isError: value.state.isError,
                ),
                25.0.hsb,
                const ButtonSimple(
                  label: 'Викликати майстра',
                  radius: 19,
                )
              ],
            ),
          ),
          bottomNavigationBar: const BottomBarWidget(),
        );
      },
    );
  }
}

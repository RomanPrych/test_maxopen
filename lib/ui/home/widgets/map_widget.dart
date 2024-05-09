import 'package:flutter/material.dart';
import 'package:test_maxopen/common/app_theme.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapWidget extends StatelessWidget {
  const MapWidget({this.coordinates, required this.mapController, super.key});
  final LatLng? coordinates;
  final MapController? mapController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 22,
        ),
        decoration: BoxDecoration(
          color: AppTheme.textFieldColor,
          borderRadius: BorderRadius.circular(55),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(55),
          child: FlutterMap(
            mapController: mapController,
            options: MapOptions(

              initialCenter: coordinates?? const LatLng(50.418328, 30.608194),
              initialZoom: 9.2,
            ),
            children: [
              TileLayer(
                tileBuilder: _darkModeTileBuilder,
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              ),
             if(coordinates != null)
                MarkerLayer(
                  rotate: true,
                  markers: [
                    Marker(
                      width: 22,
                      height: 22,
                      point: coordinates!,
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        width: 12,
                        height: 12,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppTheme.mainGreenColor,),
                          color: AppTheme.mainGreenColor.withOpacity(.1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppTheme.mainGreenColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _darkModeTileBuilder(
      BuildContext context,
      Widget tileWidget,
      TileImage tile,
      ) {
    return ColorFiltered(
      colorFilter: const ColorFilter.matrix(<double>[
        -0.2126, -0.7152, -0.0722, 0, 255, // Red channel
        -0.2126, -0.7152, -0.0722, 0, 255, // Green channel
        -0.2126, -0.7152, -0.0722, 0, 255, // Blue channel
        0,       0,       0,       1, 0,   // Alpha channel
      ]),
      child: tileWidget,
    );
  }
}

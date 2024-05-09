import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_maxopen/common/app_theme.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:test_maxopen/common/extensions/double_extension.dart';
import 'package:test_maxopen/common/img_provider.dart';
import 'package:test_maxopen/common/text_styles.dart';

class MapWidget extends StatelessWidget {
  const MapWidget(
      {this.coordinates, required this.mapController, super.key, this.isError});

  final LatLng? coordinates;
  final MapController? mapController;
  final bool? isError;

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
          child: Stack(
            children: [
              FlutterMap(
                mapController: mapController,
                options: MapOptions(
                  initialCenter:
                      coordinates ?? const LatLng(50.418328, 30.608194),
                  initialZoom: 9.2,
                ),
                children: [
                  TileLayer(
                    tileBuilder: _darkModeTileBuilder,
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  ),
                  if (coordinates != null)
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
                              border: Border.all(
                                color: AppTheme.mainGreenColor,
                              ),
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
              if (isError == true) _error(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _error() {
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 50,
          horizontal: 25,
        ),
        color: AppTheme.black.withOpacity(0.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              ImgPr.noInternet,
              width: 65,
              height: 65,
            ),
            20.0.hsb,
            Text(
              'Відсутній зв\'язок',
              textAlign: TextAlign.center,
              style: TxStyles.s19w700WhiteColor_RfDewl,
            ),
            20.0.hsb,
            Text(
              'Відсутність доступу до геолокації.\nПереконайтеся, що у додатку увімкнено\nгеолокацію та перевірте з\'єднання з Інтернетом.',
              textAlign: TextAlign.center,
              style: TxStyles.s12w400WhiteColor_RfDewl,
            ),
            20.0.hsb,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Налаштування геолокації',
                  style: TxStyles.s10w500MainGreenColor_SFProDisplay,
                ),
                6.17.wsb,
                SvgPicture.asset(
                  ImgPr.forvard,
                ),
              ],
            ),
          ],
        ));
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
        0, 0, 0, 1, 0, // Alpha channel
      ]),
      child: tileWidget,
    );
  }
}

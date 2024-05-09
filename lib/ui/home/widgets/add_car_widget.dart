import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_maxopen/common/app_theme.dart';
import 'package:test_maxopen/common/extensions/double_extension.dart';
import 'package:test_maxopen/common/img_provider.dart';
import 'package:test_maxopen/common/text_styles.dart';

class AddCarWidget extends StatelessWidget {
  const AddCarWidget({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        bottom: 20,
        right: 22,
        left: 22,
      ),
      width: double.infinity,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
          color: AppTheme.mainGreenColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40),
          )),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImgPr.carPNG),
            fit: BoxFit.cover,
          ),
          color: AppTheme.black,
          borderRadius: BorderRadius.circular(35),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Привіт,',
              style: TxStyles.s13w400WhiteColor_RfDewl,
            ),
            Text(
              name,
              style: TxStyles.s16w700WhiteColor_RfDewl,
            ),
            20.0.hsb,
            Text(
              'Додавання авто',
              style: TxStyles.s8w400WhiteColorOP60_RfDewl,
            ),
            10.0.hsb,
            Text(
              'Завантажте дані про ваше авто для\nкращого використання сервісу.',
              style: TxStyles.s10w400WhiteColor_RfDewl,
            ),
            26.0.hsb,
            Row(
              children: [
                Text(
                  'Додати авто',
                  style: TxStyles.s10w500MainGreenColor_SFProDisplay,
                ),
                6.17.wsb,
                SvgPicture.asset(
                  ImgPr.forvard,
                ),
              ],
            ),
            11.0.hsb,
          ],
        ),
      ),
    );
  }
}

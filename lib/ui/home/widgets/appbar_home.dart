import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_maxopen/common/app_theme.dart';
import 'package:test_maxopen/common/extensions/double_extension.dart';
import 'package:test_maxopen/common/img_provider.dart';
import 'package:test_maxopen/common/text_styles.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppTheme.mainGreenColor,
      centerTitle: true,
      title: Text(
        'logo',
        style: TxStyles.s15w500WhiteColor_SFProDisplay,
      ),
      actions: [
        SvgPicture.asset(
          ImgPr.phone,
          width: 20,
          height: 20,
        ),
        22.0.wsb,
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

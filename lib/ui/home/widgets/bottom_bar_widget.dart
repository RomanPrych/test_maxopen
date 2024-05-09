import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_maxopen/common/app_theme.dart';
import 'package:test_maxopen/common/extensions/double_extension.dart';
import 'package:test_maxopen/common/img_provider.dart';
import 'package:test_maxopen/common/text_styles.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 47.5,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          8.0.wsb,
          _item(
            label: 'Заявки',
            img: ImgPr.list,
          ),
          _item(
            label: 'Головна',
            isActive: true,
            img: ImgPr.home,
          ),
          _item(
            label: 'Особисті дані',
            img: ImgPr.profile,
          ),
          8.0.wsb,
        ],
      ),
    );
  }

  Widget _item({
    bool? isActive,
    String? label,
    required String img,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          img,
          colorFilter: ColorFilter.mode(
            isActive != true ? AppTheme.inActiveColor : AppTheme.whiteColor,
            BlendMode.srcIn,
          ),
        ),
        Text(
          label ?? "No data",
          style: isActive != true
              ? TxStyles.s9w500inActiveColorColor_SFProDisplay
              : TxStyles.s9w500WhiteColor_SFProDisplay,
        ),
      ],
    );
  }
}

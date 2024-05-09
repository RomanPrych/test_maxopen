import 'package:flutter/material.dart';
import 'package:test_maxopen/common/app_theme.dart';
import 'package:test_maxopen/common/text_styles.dart';

class ButtonSimple extends StatelessWidget {
  const ButtonSimple({
    super.key,
    this.width,
    this.onTap,
    this.radius,
    this.label,
    this.isLoading,
  });

  final double? width;
  final double? radius;
  final bool? isLoading;
  final String? label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isLoading == true ? null : onTap,
      child: Container(
        margin: const EdgeInsets.only(
          left: 22,
          right: 22,
          bottom: 20,
        ),
        decoration: BoxDecoration(
          color: AppTheme.mainGreenColor,
          borderRadius: BorderRadius.circular(radius ?? 16),
        ),
        alignment: Alignment.center,
        height: 47,
        width: width ?? double.infinity,
        child: isLoading == true
            ? const SizedBox(
                height: 19.17,
                width: 18.33,
                child: CircularProgressIndicator(
                  color: AppTheme.whiteColor,
                  strokeWidth: 2,
                ),
              )
            : Text(
                label ?? 'No text',
                style: TxStyles.s13w500WhiteColor_SFProDisplay,
              ),
      ),
    );
  }
}

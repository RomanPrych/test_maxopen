import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_maxopen/common/app_theme.dart';
import 'package:test_maxopen/common/extensions/double_extension.dart';
import 'package:test_maxopen/common/text_styles.dart';
import 'package:test_maxopen/ui/login/provider/login_provider.dart';
import 'package:test_maxopen/widgets/button_simple.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (context, value, child) {
        return Scaffold(
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Scaffold(
                extendBody: true,
                extendBodyBehindAppBar: true,
                body: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    children: [
                      132.0.hsb,
                      Text(
                        'Як до вас звертатися?',
                        textAlign: TextAlign.center,
                        style: TxStyles.s19w700WhiteColor_RfDewl,
                      ),
                      20.0.hsb,
                      Text(
                        'Будь ласка, укажіть ваше ім\'я для\nперсоналізації сервісу.',
                        style: TxStyles.s12w400WhiteColor_RfDewl,
                        textAlign: TextAlign.center,
                      ),
                      28.0.hsb,
                      SizedBox(
                        height: 47,
                        child: TextField(
                          cursorColor: AppTheme.mainGreenColor,
                          controller: value.state.controller,
                          style: TxStyles.s11w400WhiteColor_RfDewl,
                          decoration: const InputDecoration(
                            hintText: 'Ваше ім\'я',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar: ButtonSimple(
                  label: 'Продовжити',
                  onTap: value.onNextTap,
                  isLoading: value.state.isLoadingButton,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

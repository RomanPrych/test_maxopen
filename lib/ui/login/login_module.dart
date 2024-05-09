import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_maxopen/ui/login/login_screen.dart';
import 'package:test_maxopen/ui/login/provider/login_provider.dart';

class LoginModule extends StatelessWidget {
  const LoginModule({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginProvider(),
      child: const LoginScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:jobsque/sign_up/sing_up_view.dart';
import 'package:jobsque/splash_screen/splash.dart';
import 'package:jobsque/test.dart';

import 'create_account/create_view.dart';
import 'forgot_password/create_new_pass_view.dart';
import 'forgot_password/email_check.dart';
import 'forgot_password/forget_password_view.dart';
import 'onboarding/Onboarding_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            primaryColor: Color(0xff3366FF),

        ),

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:OnboardingView(),
    );
  }
}


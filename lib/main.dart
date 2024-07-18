import 'package:flutter/material.dart';
import 'package:jobsque/sign_up/sing_up_view.dart';
import 'package:jobsque/splash_screen/splash.dart';

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

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home:SingUpView(),
    );
  }
}


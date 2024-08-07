import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../onboarding/view.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      SpinKitPulse(
        color: Color(0xffD6E4FF),
        size: 100.0,
        duration: Duration(seconds: 3),

      ),
      SpinKitPulse(
        color: Color(0xffD6E4FF),
        size: 1200,
        duration: Duration(seconds: 4),
      ),
      SpinKitPulse(
        color: Color(0xffD6E4FF),
        size: 1200,
        duration: Duration(seconds:5),
      ),
      SpinKitPulse(
        color: Color(0xffD6E4FF),
        size: 500.0,
        duration: Duration(seconds:6),
      ),
          ZoomIn(
            duration: Duration(seconds: 3),
              onFinish: (direction) => Navigator.push(context, MaterialPageRoute(builder: (context) => OnboardingView(),)),
              child: Center(
                  child: Image.asset("assets/img/Logo.png",width: 141,height: 33,))),



        ]));
  }
}

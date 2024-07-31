import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:jobsque/desgin/app_button.dart';
import 'package:jobsque/desgin/app_img.dart';

class EmailCheck extends StatelessWidget {
  const EmailCheck({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
            Stack(
              alignment: Alignment.center,
              children: [
                AppImg(path: "directbox.png"),
              SpinKitPulse(
                color: Color(0xffD6E4FF),
                size: 250.0,
                duration: Duration(seconds: 3),
        
              ),
              SpinKitPulse(
                color: Color(0xffD6E4FF),
                size: 200.0,
                duration: Duration(seconds: 4),
              ),
                FadeIn(
                    duration: Duration(seconds: 2),
                    child: AppImg(path: "directbox.png")),
            ],),
                Text("Check your Email",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 24,),),
                Text(
                  textAlign:TextAlign.center ,
                  maxLines: 2,
                  "We have sent a reset password to your email \n address",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,),),
                SizedBox(height: 290,),
                AppButton(
                  textColor:Colors.white ,
                  color: Theme.of(context).primaryColor ,
                  onPressed:() {},
                  content: "Open email app" ,
                )
          ])
          ,),
      ),
    );
  }
}

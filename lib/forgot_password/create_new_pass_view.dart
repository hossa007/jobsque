import 'package:flutter/material.dart';
import 'package:jobsque/desgin/app_input.dart';

import '../desgin/app_img.dart';

class NewPassView extends StatelessWidget {
  const NewPassView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Align(
                  alignment: Alignment.topRight,
                  child: AppImg(path: "Logo.png",width: 81,
                    height: 19,)),
              SizedBox(
                height: 44,
              ),
              Text(
                "Create new password",
                style:
                TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Set your new password so you can login and acces Jobsque",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280)),
              ),
              AppInput( obscureText: true,content: "", prefixIcon: Icon(Icons.lock_outline_rounded), onTapOutside: (){}, onTap: (){

              })


            ],
          ),
        ),
      ) ,
    );
  }
}

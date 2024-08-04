import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/desgin/app_button.dart';
import 'package:jobsque/desgin/app_input.dart';

import 'api_model/login_api.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  late ProfileModel model;

  Future<void> getData() async{
    try{
      final response = await Dio().post("https://project2.amit-learning.com/api/auth/login"
          ,data: {
            "email":one.text,
            "password":two.text,
          }
      );

      model =  ProfileModel.fromJson(response.data);
      print(model.status);
    }on DioError catch(e){
      print("error");
      print(model.error.massage);
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.red,
            content: Text("error"),));
    }

  }



  final TextEditingController one = TextEditingController();
  final TextEditingController two = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppInput(content: "content", prefixIcon: Icon(Icons.add), onTapOutside: (){}, onTap: (){},controller:one ,),
          SizedBox(height: 10,),
          AppInput(content: "content", prefixIcon: Icon(Icons.add), onTapOutside: (){}, onTap: (){},controller:two ,),
          SizedBox(height: 10,),

          AppButton(content: "click",onPressed: (){
            getData();
            if( model.status == true){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                    content: Text("welcome"),));
              print("********");
              print(model.status);
            }

          },textColor: Colors.red, color: Colors.green,),
        ],
        
      )),
    );
  }
}

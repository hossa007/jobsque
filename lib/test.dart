import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/core/dio_helper.dart';
import 'package:jobsque/desgin/app_button.dart';
import 'package:jobsque/desgin/app_input.dart';
import 'package:jobsque/sign_up/sing_up_view.dart';

import 'api_model/login_api.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool isLoading = false;
Future<void> sendInfo ()async{
  isLoading = true;
  final response = await DioHelper.send("/auth/login",data: {
    "email":one.text,
    "password":two.text
  });
  if(response.isSuccess){
Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpView(),));
  }else{
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(response.message!),
      ),
    );
  }
  isLoading = false;
  setState(() {});
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
          isLoading ? Center(child: CircularProgressIndicator(),):
          AppButton(content: "click",onPressed: (){
            sendInfo();
            print(isLoading);
            // if( model.status == true){
            //   ScaffoldMessenger.of(context).showSnackBar(
            //       SnackBar(
            //         backgroundColor: Colors.green,
            //         content: Text("welcome"),));
            //   print("********");
            // }

          },textColor: Colors.red, color: Colors.green,),
        ],
        
      )),
    );
  }
}

import 'package:flutter/material.dart';

import '../create_account/create_view.dart';
import '../sign_up/sing_up_view.dart';

class PassForget extends StatefulWidget{
  const PassForget({super.key});

  @override
  State<PassForget> createState() => _PassForgetState();
}

class _PassForgetState extends State<PassForget> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:SafeArea(
        child: SingleChildScrollView(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [

                        IconButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpView(),));
                        }, icon: Icon(Icons.arrow_back)),
                        Image.asset(
                          "assets/img/Logo.png",
                          width: 81,
                          height: 19,
                        ),
                      ],
                    )),
                SizedBox(
                  height: 44,
                ),
                Text(
                  "Reset Password",
                  style:
                  TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  "Enter the email address you used when you joined and we’ll send you instructions to reset your password.",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff6B7280)),
                ),
                SizedBox(
                  height: 40,
                ),
          
                TextFormField(
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                    setState(() {

                    });
                  } ,

                  controller: emailController,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 2.0,
                            color: Color(0xff3366FF),
                          )),
                      prefixIcon: Icon(Icons.email_outlined,color: Color(0xffD1D5DB),size: 27,),
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0))),
                  obscureText: false, // Hide the entered text for passwords
                ),
          
                SizedBox(
                  height: 250,
                ),
          
                SizedBox(
                  height: 105,
                ),
          
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Row(
                    children: [
                      Text(
                        "You remember your password",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff9CA3AF)),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text("Login",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Theme.of(context).primaryColor)))
                    ],
                  ),
                ),
                Center(
                    child: SizedBox(
                        height: 48,
                        width: 327,
                        child: FilledButton(

                            style: ButtonStyle(

                                backgroundColor: MaterialStatePropertyAll(
                                     emailController.text.isEmpty
                                        ? Color(0xffD1D5DB)
                                        : Theme.of(context).primaryColor)),
                            onPressed: () {},
                            child: Text(
                              "Create account",
                              style: TextStyle(
                                  color:
                                      emailController.text.isEmpty
                                      ? Color(0xff6B7280)
                                      : Colors.white),
                            )))),

                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
import 'package:flutter/material.dart';

class SingUpView extends StatefulWidget {
  const SingUpView({super.key});

  @override
  State<SingUpView> createState() => _SingUpViewState();
}

class _SingUpViewState extends State<SingUpView> {
  final BorderSide borderSide =
      BorderSide(width: 2.0, color: Colors.green); // Define border style

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                  child: Image.asset(
                    "assets/img/Logo.png",
                    width: 81,
                    height: 19,
                  )),
              SizedBox(
                height: 44,
              ),
              Text(
                "Login",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "Please login to find your dream job",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff6B7280)),
              ),
              SizedBox(
                height: 44,
              ),
              TextFormField(
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                    width: 2.0,
                    color: Color(0xff3366FF),
                  )),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  fillColor: Colors.blue,
                  prefixIcon: Icon(Icons.person),
                  hintText: "Username",
                ),
                obscureText: false, // Hide the entered text for passwords
              ),
              SizedBox(
                height: 16,
              ),
              TextFormField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 2.0,
                      color: Color(0xff3366FF),
                    )),
                    prefixIcon: Icon(Icons.lock),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0))),
                obscureText: true, // Hide the entered text for passwords
              ),
            ],
          ),
        ),
      ),
    );
  }
}

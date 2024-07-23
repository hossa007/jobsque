import 'package:flutter/material.dart';

class  CreateAccount extends StatefulWidget{
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final  TextEditingController userController = TextEditingController();
  final  TextEditingController emailController = TextEditingController();
  final  TextEditingController passwordController = TextEditingController();
   Color color = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
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
                      "Cereate Account",
                      style: TextStyle(fontSize: 28, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Please create an account to find your dream job ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6B7280)),
                    ),
                    SizedBox(
                      height: 44,
                    ),
                    TextFormField(
                      controller: userController,
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
                      controller: emailController,
                      decoration: InputDecoration(

                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 2.0,
                                color: Color(0xff3366FF),
                              )),
                          prefixIcon: Icon(Icons.email_outlined),
                          hintText: "Email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                      obscureText: false, // Hide the entered text for passwords
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      onEditingComplete: () {
                        setState(() {

                        });
                      },
                      onTap: () {
                        setState(() {



                        });
                      },
                      controller: passwordController,
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
                      Text("Password must be at least 8 characters",style: TextStyle(color: color),),
                    SizedBox(height: 137,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 65  ),
                      child: Row(
                        children: [
                          Text("Already have an account?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xff9CA3AF)),),
                          TextButton(onPressed: () {}, child: Text("Login",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: Theme.of(context).primaryColor)))
                        ],
                      ),
                    ),
                    Center(child: SizedBox(
                        height: 48,
                        width: 327,
                        child: FilledButton(
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(userController.text.isEmpty && passwordController.text.isEmpty ? Color(0xffD1D5DB):Theme.of(context).primaryColor)),
                            onPressed: () {}, child: Text("Create account",style: TextStyle(color: userController.text.isEmpty && passwordController.text.isEmpty &&emailController.text.isEmpty ? Color(0xff6B7280):Colors.white),)))),
                    SizedBox(height: 20,),

                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomPaint(
                      painter: LinePainter(lineColor: Colors.black.withOpacity(.30)),
                      size: Size(70, 50.0),
                      // Set the size of the painted area
                    ),
                    SizedBox(width: 12,),
                    Text("Or Login With Account"),
                    SizedBox(width: 12,),
                    CustomPaint(
                      painter: LinePainter(lineColor: Colors.black.withOpacity(.30)),
                      size: Size(70, 50.0), // Set the size of the painted area
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        width: 154,height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffD1D5DB),width: 2.0),
                            borderRadius: BorderRadius.circular(10)


                        ),
                        child: Row(

                          children: [
                            Image.asset("assets/img/google.png"),
                            SizedBox(width: 5,),
                            Text("Google",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,),),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {

                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),

                        width: 154,height: 60,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0xffD1D5DB),width: 2.0),
                            borderRadius: BorderRadius.circular(10)


                        ),
                        child: Row(

                          children: [
                            Image.asset("assets/img/Facebook.png"),
                            SizedBox(width: 5,),
                            Text("Facebook",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,),),
                          ],
                        ),
                      ),
                    ),
                  ],),
              ),




            ],
          ),
        ),
      ),
    );

  }
}
class LinePainter extends CustomPainter {
  // Optional: Add properties to customize the line (color, thickness etc.)
  final Color lineColor;
  final double strokeWidth;

  LinePainter({this.lineColor = Colors.black, this.strokeWidth = 2.0});

  @override
  void paint(Canvas canvas, Size size) {
    // Create a Paint object to define the line style
    final paint = Paint()
      ..color = lineColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    // Define the starting and ending points of the line
    final startPoint = Offset(0, size.height / 2);
    final endPoint = Offset(size.width, size.height / 2);

    // Draw the line on the canvas
    canvas.drawLine(startPoint, endPoint, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
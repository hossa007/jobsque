import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../sign_up/sing_up_view.dart';
import 'controller.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  late OnboardingController cubit;

  @override
  void initState() {
    cubit = BlocProvider.of(context);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/img/Logo.png",
                    width: 81,
                    height: 16,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpView(),));
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ))
                ],
              ),
            ),
            BlocBuilder(
              bloc: cubit,
              builder: (context, state) => Image.asset(
                "assets/img/onboarding${cubit.onChanging}.png",
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),),

            SizedBox(
              height: 24,
            ),
            BlocBuilder(
              bloc: cubit,
              builder: (context, state) =>  Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(children: [
                  if(cubit.onChanging == 0)
                    RichText(
                        text: TextSpan(
                          // text: "Find a job, and start building your career from now on",
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Find a job, and  ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'start building ',
                              style: TextStyle(color: Colors.blue),
                            ),
                            TextSpan(
                              text: 'your career from now on',
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  if(cubit.onChanging == 0)
                    Text(
                      "Explore over 25,924 available job roles and upgrade your operator now.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6B7280)),
                    ),
                  if(cubit.onChanging == 1)
                    RichText(
                        text: TextSpan(
                          // Hundreds of jobs are waiting for you to join together,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Hundreds of jobs are waiting for you to  ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'join together ',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        )),
                  if(cubit.onChanging == 1)
                    Text(
                      "Immediately join us and start applying for the job you are interested in.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6B7280)

                      ),
                    ),

                  if(cubit.onChanging == 2)
                    RichText(
                        text: TextSpan(
                          //Get the best choice for the job you've always dreamed of,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Get the best  ',
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'choice for the job ',
                              style: TextStyle(color: Colors.blue),
                            ),
                            TextSpan(
                              text: "you've always dreamed of",
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        )),
                  if(cubit.onChanging == 2)
                    Text(
                      "The better the skills you have, the greater the good job opportunities for you.",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff6B7280)),
                    ),

                ]
                ),
              ),),

            SizedBox(
              height: 24,
            ),
            SizedBox(
              height: 50,
              child: BlocBuilder(
                  bloc: cubit,
                  builder: (context, state) => ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 174.5),
                    itemBuilder: (context, index) => Center(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          child: GestureDetector(
                            onTap: () {
                              cubit.onChanging = index ;

                              print(index);
                            },
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor:cubit.onChanging != index ? Color(0xff3366FF).withOpacity(.30) :Color(0xff3366FF),
                            ),
                          ),)
                    ),
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                  )),),
            SizedBox(height: 20),
            BlocBuilder(
                bloc: cubit,
                builder: (context, state) => SizedBox(
                  height: 48,
                  width: 327,
                  child: FilledButton(
                      style: ButtonStyle(
                          backgroundColor:
                          MaterialStatePropertyAll(Color(0xff3366FF))),
                      onPressed: () {
                        cubit.buttonAction(context);
                      },
                      child:
                      Text(
                        cubit.onChanging <= 1 ? "Next":"Get Started",
                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                      )),
                )
            )
          ],
        ),
      ),
    );
    ;
  }
}
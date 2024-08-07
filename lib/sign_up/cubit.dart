import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/sign_up/state.dart';

import '../core/dio_helper.dart';
import '../home_screen_view/Home_view.dart';

class SingUpCubit extends Cubit<SingUpState>{
  SingUpCubit():super(SingUpLoadingState());

  bool isLoading = false;
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isChecked = false;
////////////////////////////////////////
  Future<void> sendInfo (context)async{
    isLoading = true;
    final response = await DioHelper.send("/auth/login",data: {
      "email":userController.text,
      "password":passwordController.text
    });
    if(response.isSuccess){
      emit(SingUpSuccessState());
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView(),));
    }else{
      emit(SingUpFailedState());
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(response.message!),
        ),
      );
    }
    emit(SingUpSuccessState());

}}
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jobsque/onboarding/states.dart';

import '../sign_up/sing_up_view.dart';

class OnboardingController extends Cubit<OnboardingState> {
  OnboardingController():super(OnboardingState());
  int onChanging = 0;
  void plus(){
    emit(OnChangingState());
    onChanging++;
  }
  void navigate(context){
    emit(NavigateState());
    Navigator.push(context, MaterialPageRoute(builder: (context) => SingUpView(),));

  }

void buttonAction (context){
  emit(ButtonActionState());
  if (onChanging< 2) {
    plus();
  }else if (onChanging == 2){
    navigate(context);
  }
}


}
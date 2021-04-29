import 'package:DevQuiz/models/QuizModel.dart';
import 'package:DevQuiz/models/UserModel.dart';
import 'package:DevQuiz/pages/home/repository.dart';
import 'package:DevQuiz/pages/home/state.dart';
import 'package:flutter/material.dart';




class HomeController {

  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;
  
  final repository = HomeRepository();

  void getUser() async{
    state = HomeState.loading;
    user = await repository.getUser();
    state = HomeState.success;
  }

  void getQuizzes() async{
    state = HomeState.loading;
    quizzes = await repository.getQuizzes();
    state = HomeState.success;
  }

}
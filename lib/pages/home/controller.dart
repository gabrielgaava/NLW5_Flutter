import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/models/AwnserModel.dart';
import 'package:DevQuiz/models/QuestionModel.dart';
import 'package:DevQuiz/models/QuizModel.dart';
import 'package:DevQuiz/models/UserModel.dart';
import 'package:DevQuiz/pages/home/state.dart';




class HomeController {

  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser(){
    user = UserModel(name: "Gabriel Gava", photoUrl: "https://avatars.githubusercontent.com/u/31636577?v=4");
  }

  void getQuizzes(){
    quizzes = [
      QuizModel(
        title: 'NLW 5 Flutter', 
        image: AppImages.blocks, 
        level: Level.facil, 
        questions: [
          QuestionModel(
            title: "Esta curtindo o Flutter ?", awnsers: [
              AwnserModel(title: "Estou curtindo", isRight: false),
              AwnserModel(title: "Estou amando", isRight: false),
              AwnserModel(title: "Estou odiando", isRight: false),
              AwnserModel(title: "Estou cagando", isRight: true),
            ]
          ),
        ],
      )
    ];
  }

}
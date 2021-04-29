import 'package:DevQuiz/models/AwnserModel.dart';
import 'package:DevQuiz/models/QuestionModel.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAwsered;
  final String image;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionAwsered = 0,
    required this.image,
    required this.level,
  });

}
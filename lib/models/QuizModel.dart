import 'dart:convert';
import 'package:DevQuiz/models/QuestionModel.dart';

enum Level { facil, medio, dificil, perito }

extension LevelStringExt on String {
  Level get levelParse => {
    "facil": Level.facil, 
    "medio": Level.medio, 
    "dificil": Level.dificil, 
    "perito": Level.perito
  }[this]!;
}

extension LevelExt on Level {
  String get parse => {
    Level.facil: "facil", 
    Level.medio: "medio", 
    Level.dificil: "dificil", 
    Level.perito: "perito"
  }[this]!;
}

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

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'questions': questions.map((x) => x.toMap()).toList(),
      'questionAwsered': questionAwsered,
      'image': image,
      'level': level.parse,
    };
  }

  factory QuizModel.fromMap(Map<String, dynamic> map) {
    return QuizModel(
      title: map['title'],
      questions: List<QuestionModel>.from(map['questions']?.map((x) => QuestionModel.fromMap(x))),
      questionAwsered: map['questionAwsered'],
      image: map['image'],
      level: map['level'].toString().levelParse,
    );
  }

  String toJson() => json.encode(toMap());

  factory QuizModel.fromJson(String source) => QuizModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'QuizModel(title: $title, questions: $questions, questionAwsered: $questionAwsered, image: $image, level: $level)';
  }

}

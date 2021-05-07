import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/models/QuizModel.dart';
import 'package:DevQuiz/pages/challenge/challenge_page.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatefulWidget {

  final QuizModel quiz;
  final String title;
  final int awnsered;
  final int numberOfQuestions;

  QuizCard({required this.quiz, required this.title, required this.awnsered, required this.numberOfQuestions});


  @override
  _QuizCardState createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {

  @override
  Widget build(BuildContext context) {

    final quiz = this.widget.quiz;

    return GestureDetector(
          onTap: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => ChallengePage(questions: quiz.questions))); },
          child: Container(
          height: 200,
          decoration: BoxDecoration(
              color: AppColors.white,
              border: Border.all(color: AppColors.border),
              borderRadius: BorderRadius.circular(10)),
          child: Padding(
              padding: EdgeInsets.all(18),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(AppImages.data),
                  Text(quiz.title, style: AppTextStyles.heading),
                  Row(children: [
                    Expanded(
                        flex: 1,
                        child: Text(
                          "${quiz.questionAwsered} de ${quiz.questions.length}",
                          style: AppTextStyles.body11,
                        )),
                    Expanded(
                      flex: 2,
                      child: LinearProgressIndicator(
                        value: ((quiz.questionAwsered * 100) / quiz.questions.length) / 100,
                        backgroundColor: AppColors.chartSecondary,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                      ),
                    )
                  ])
                ],
              ))),
    );
  }
}

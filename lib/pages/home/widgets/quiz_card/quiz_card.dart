import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatefulWidget {

  final String title;
  final int awnsered;
  final int numberOfQuestions;

  QuizCard({required this.title, required this.awnsered, required this.numberOfQuestions});


  @override
  _QuizCardState createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text(this.widget.title, style: AppTextStyles.heading),
                Row(children: [
                  Expanded(
                      flex: 1,
                      child: Text(
                        "${this.widget.awnsered} de ${this.widget.numberOfQuestions}",
                        style: AppTextStyles.body11,
                      )),
                  Expanded(
                    flex: 2,
                    child: LinearProgressIndicator(
                      value: ((this.widget.awnsered * 100) / this.widget.numberOfQuestions) / 100,
                      backgroundColor: AppColors.chartSecondary,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                    ),
                  )
                ])
              ],
            )));
  }
}

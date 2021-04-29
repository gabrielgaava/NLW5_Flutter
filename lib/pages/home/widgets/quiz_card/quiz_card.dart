import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizCard extends StatefulWidget {

  final String title;
  QuizCard({required this.title});


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
                        "3 de 10",
                        style: AppTextStyles.body11,
                      )),
                  Expanded(
                    flex: 2,
                    child: LinearProgressIndicator(
                      value: 0.3,
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

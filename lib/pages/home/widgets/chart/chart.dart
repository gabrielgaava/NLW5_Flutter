import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class CircularChart extends StatelessWidget {

  final userScore;
  CircularChart({required this.userScore});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      child: Stack(children: [
        Center(
          child: Container(
            height: 80,
            width: 80,
            child: CircularProgressIndicator(
              strokeWidth: 10,
              value: userScore / 100,
              backgroundColor: AppColors.chartSecondary,
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
            ),
          ),
        ),
        Center(child: Text("$userScore%", style: AppTextStyles.heading,))
      ],),
    );
  }
}
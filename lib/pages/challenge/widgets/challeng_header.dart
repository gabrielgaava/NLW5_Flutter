import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class ChallengeHeader extends PreferredSize {
  ChallengeHeader()
      : super(
            preferredSize: Size.fromHeight(90),
            child: Container(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Questão 04", style: AppTextStyles.heading15),
                      Text("de 10", style: AppTextStyles.heading15),
                    ],
                  ),
                  SizedBox(height: 24),
                  Container(
                    child: LinearProgressIndicator(
                      value: 0.3,
                      backgroundColor: AppColors.chartSecondary,
                      valueColor:
                          AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                    ),
                  ),
                ],
              ),
            )));
}

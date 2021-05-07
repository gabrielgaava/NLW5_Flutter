import 'package:DevQuiz/core/core.dart';
import 'package:flutter/material.dart';

class ChallengeHeader extends PreferredSize {

  final int currentPage;
  final int totalOfQuestions;

  ChallengeHeader({required this.currentPage, required this.totalOfQuestions})
      : super(
            preferredSize: Size.fromHeight(90),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            BackButton(),
                            Text("Questão $currentPage", style: AppTextStyles.heading15),
                          ]
                        ),
                        Text("de $totalOfQuestions", style: AppTextStyles.heading15),
                      ],
                    ),
                    SizedBox(height: 6),
                    Container(
                      child: LinearProgressIndicator(
                        value: currentPage / totalOfQuestions,
                        backgroundColor: AppColors.chartSecondary,
                        valueColor:
                            AlwaysStoppedAnimation<Color>(AppColors.chartPrimary),
                      ),
                    ),
                ],
              ),
            )));
}

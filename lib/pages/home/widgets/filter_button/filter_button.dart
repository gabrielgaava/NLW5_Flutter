import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  FilterButton(
      {required this.backgroundColor,
      required this.borderColor,
      required this.label});

  final Color backgroundColor;
  final Color borderColor;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 32,
        margin: EdgeInsets.symmetric(horizontal: 4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
            color: backgroundColor,
            border: Border.all(color: borderColor)),
        child: Center(
          child: Text(
            label,
            style: AppTextStyles.body,
          ),
        ),
      ),
    );
  }
}

import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/models/AwnserModel.dart';
import 'package:flutter/material.dart';

class AwnserBox extends StatelessWidget {

  // Props:
  final AwnserModel awnser;
  final bool isSelected;
  final VoidCallback onTap;

  // Constructor:
  const AwnserBox({
    Key? key, 
    required this.awnser,
    required this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  // Gets:
  Color get _selectedColorRight => awnser.isRight ? AppColors.darkGreen : AppColors.darkRed;
  Color get _selectedBorderRight => awnser.isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedColorCardRight => awnser.isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedBorderCardRight => awnser.isRight ? AppColors.green : AppColors.red;
  TextStyle get _selectedTextStyleRight => awnser.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;
  IconData get _selectedIconRight => awnser.isRight ? Icons.check : Icons.close;

  // Render:
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
          color: isSelected ? _selectedColorCardRight : AppColors.white,
          borderRadius: BorderRadius.circular(10), 
          border: Border.fromBorderSide(
            BorderSide(color: isSelected ? _selectedBorderCardRight : AppColors.border)
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Text(awnser.title, style: isSelected ? _selectedTextStyleRight : AppTextStyles.body)),
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: isSelected ? _selectedColorRight : AppColors.white,
                borderRadius: BorderRadius.circular(24), 
                border: Border.fromBorderSide(BorderSide(color: isSelected ? _selectedBorderRight : AppColors.border)),
              ),
              width: 24, height: 24,
              child: isSelected ? Icon(_selectedIconRight, size: 16, color: AppColors.white) : null,  
            ),
          ],
        ),
      ),
    );
  }
}
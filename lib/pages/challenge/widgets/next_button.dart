import 'package:DevQuiz/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextButton extends StatelessWidget {

  // Props :
  final String label;
  final Color backgroundColor;
  final Color textColor;
  final bool haveBorder;
  final VoidCallback onTap;

  // Constructors:
  NextButton({
    required this.label, 
    required this.backgroundColor, 
    required this.textColor, 
    this.haveBorder = false, 
    required this.onTap
  });

  NextButton.green(String label, VoidCallback onTap) : 
    this.backgroundColor = AppColors.darkGreen,
    this.textColor = AppColors.white,
    this.label = label,
    this.haveBorder = false,
    this.onTap = onTap;

  NextButton.white(String label, VoidCallback onTap) :
    this.backgroundColor = AppColors.white,
    this.textColor = AppColors.grey,
    this.label = label,
    this.haveBorder = true,
    this.onTap = onTap;


  // Render :
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          overlayColor: MaterialStateProperty.all(AppColors.overlay),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          )),
          side: haveBorder ? MaterialStateProperty.all(BorderSide(color: AppColors.border)) : null,
        ),
        onPressed: onTap,
        child: Text(label, style: GoogleFonts.notoSans(
          fontWeight: FontWeight.w600,
          fontSize: 15,
          color: textColor,
        ),),
      ),
    );
  }
}
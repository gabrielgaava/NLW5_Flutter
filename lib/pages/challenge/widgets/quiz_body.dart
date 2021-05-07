import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/models/AwnserModel.dart';
import 'package:flutter/material.dart';
import 'awnser.dart';

class QuizBody extends StatefulWidget {

  final List<AwnserModel> awnsers;
  final String title;
  QuizBody({ required this.awnsers, required this.title });

  @override
  _QuizBodyState createState() => _QuizBodyState();
}

class _QuizBodyState extends State<QuizBody> {

  int? selectedIndex = -1;
  AwnserModel awnser(int index) => widget.awnsers[index];

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text(widget.title, style: AppTextStyles.heading, textAlign: TextAlign.left,),
            SizedBox(height: 10),
            for(var i = 0; i < widget.awnsers.length; i++)
              AwnserBox(
                awnser: awnser(i),
                onTap: (){
                  selectedIndex = i;
                  setState(() {});
                },
                isSelected: selectedIndex == i,
              ),
          ],
        ),
      );
  }
}
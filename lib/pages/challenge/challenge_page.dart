import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/pages/challenge/widgets/awnser.dart';
import 'package:DevQuiz/pages/challenge/widgets/challeng_header.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {
  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChallengeHeader(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("O que o Flutter faz em sua totalidade?", style: AppTextStyles.heading),
            AwnserBox(title: "Kit de desenvolvimento de interface de usuário", isSelected: true),
            AwnserBox(title: "Possibilita a criação de aplicativos criados nativamente", isSelected: true, isRight: true,),
            AwnserBox(title: "Acho que é uma marca de café do Himalaia"),
            AwnserBox(title: "Possibilita a criação de desktops que são muito incríveis"),
            Row(children: [
              Expanded(
                child: TextButton(
                  onPressed: () => {}, 
                  child: Text("Avançar"),
                ),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}

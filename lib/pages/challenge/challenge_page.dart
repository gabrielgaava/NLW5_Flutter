import 'package:DevQuiz/models/QuestionModel.dart';
import 'package:DevQuiz/pages/challenge/controller.dart';
import 'package:DevQuiz/pages/challenge/widgets/challeng_header.dart';
import 'package:DevQuiz/pages/challenge/widgets/next_button.dart';
import 'package:DevQuiz/pages/challenge/widgets/quiz_body.dart';
import 'package:flutter/material.dart';

class ChallengePage extends StatefulWidget {

  final List<QuestionModel> questions;

  ChallengePage({required this.questions});

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {

  final controller = ChallangePageController();
  final pageController = PageController();

  @override
  void initState() {
    controller.currentPageNotifier.addListener(() {
      setState((){});
    });
    pageController.addListener(() { 
      controller.currentPage = pageController.page!.toInt();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    final questions = this.widget.questions;

    return Scaffold(
      appBar: ChallengeHeader(currentPage: controller.currentPage+1, totalOfQuestions: questions.length,),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        children: questions.map((e) => QuizBody(awnsers: e.awnsers, title: e.title)).toList(),
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10, bottom: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(child: NextButton.white("Voltar", (){ pageController.previousPage(duration: Duration(milliseconds: 300), curve: Curves.linear); })),
              Expanded(child: NextButton.green("Avançar", (){ pageController.nextPage(duration: Duration(milliseconds: 300), curve: Curves.linear); })),
            ]
          ),
        ),
      ),
    );
  }
}

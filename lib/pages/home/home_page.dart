import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/pages/home/controller.dart';
import 'package:DevQuiz/pages/home/state.dart';
import 'package:DevQuiz/pages/home/widgets/app_bar/app_bar.dart';
import 'package:DevQuiz/pages/home/widgets/filter_button/filter_button.dart';
import 'package:DevQuiz/pages/home/widgets/quiz_card/quiz_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
    controller.stateNotifier.addListener(() {
      setState((){});
    });
  }

  @override
  Widget build(BuildContext context) {
    if(controller.state == HomeState.success){ 
    return Scaffold(
        appBar: HomeAppBar(user: controller.user!),
        body: Container(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Row(children: [
                FilterButton(
                  borderColor: AppColors.levelButtonBorderFacil,
                  backgroundColor: AppColors.levelButtonFacil,
                  label: "Facil",
                ),
                FilterButton(
                  borderColor: AppColors.levelButtonBorderMedio,
                  backgroundColor: AppColors.levelButtonMedio,
                  label: "Médio",
                ),
                FilterButton(
                  borderColor: AppColors.levelButtonBorderDificil,
                  backgroundColor: AppColors.levelButtonDificil,
                  label: "Difícil",
                ),
                FilterButton(
                  borderColor: AppColors.levelButtonBorderPerito,
                  backgroundColor: AppColors.levelButtonPerito,
                  label: "Perito",
                ),
              ]),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  children: controller.quizzes!.map((e) => QuizCard(
                    title: e.title,
                    numberOfQuestions: e.questions.length,
                    awnsered: e.questionAwsered,
                  )).toList()),
                ),
              ),
          ]),
        ));
    } else {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
          ),
        )
      );
    }
  }
}

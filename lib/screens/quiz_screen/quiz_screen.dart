import 'package:flutter/material.dart';
import 'package:quran_app/screens/quiz_screen/score_screen.dart';

import '../../model/quiz_model.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({Key? key}) : super(key: key);

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<QuizModel> quizData = [
    QuizModel(question: "How Many is That?", answers: {
      "2": true,
      "4": false,
      "6": false,
      "8": false,
    }),
    QuizModel(question: "What is flutter?", answers: {
      "Framework": true,
      "IDE": false,
      "Programming language": false,
      "Language": false,
    }),
  ];
  bool isPressed = false;
  bool answered = false;
  final PageController controller = PageController();
  int score=0;
  int counter=0;
  @override
  Widget build(BuildContext context) {
    print("isPressed?????${isPressed}");
    print("answered?????${answered}");
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Screen"),
      ),
      body: PageView.builder(
          controller: controller,
          itemCount: quizData.length,
          itemBuilder: (context, index) {
        return Column(
          children: [
            Text(quizData[index].question),
            for (int i = 0; i < quizData[index].answers.length; i++)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: isPressed==true?
                      quizData[index].answers.values.toList()[i]==true?
                      Colors.blue:
                      Colors.red:
                      Colors.grey),
                  child: MaterialButton(
                    onPressed:answered==false? () {

                      setState(() {
                        isPressed = true;
                        answered=true;
                        if(quizData[index].answers.values.toList()[i]==true){
                          counter++;
                        }
                      });
                      print(quizData[index].answers.values.toList()[i]);
                    }:null,
                    child: Text(quizData[index].answers.keys.toList()[i]),
                  ),
                ),
              ),
            TextButton(onPressed: (){
              if(index==quizData.length-1){
                Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context)=>ScoreScreen(score: counter*10)));
                print('${counter*10}');
              }else{
                setState(() {
                  isPressed = false;
                  answered=false;

                });
                controller.nextPage(
                    duration: Duration(microseconds: 2222), curve: Curves.bounceIn);
              }
            }, child: Text(index==quizData.length-1?"Finish":'Next'),)
          ],
        );
      }),
    );
  }
}

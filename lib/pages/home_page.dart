import 'package:flutter/material.dart';

import 'package:flutter_basics/models/question_item_model.dart';
import 'package:flutter_basics/widgets/answer_item.dart';
import 'package:flutter_basics/widgets/question_item.dart' show QuestionItem;
import 'package:flutter_basics/widgets/total_score_part.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int questionCounter = 1;
  int questionIndex = 0, myTotalScore = 0;
  int answerChosen = -1;
  int resultedScore = questions.length * 10;
  bool showTotalScore = false;

  @override
  Widget build(BuildContext context) {
    showTotalScore = myTotalScore >= resultedScore ? true : false;

    return Scaffold(
      // appBar: AppBar(
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       const Text(
      //         'Home',
      //         style: TextStyle(
      //           fontSize: 24,
      //           fontWeight: FontWeight.bold,
      //           color: Colors.white,
      //         ),
      //       ),
      //     ],
      //   ),
      //   backgroundColor: Colors.blue,
      // ),
      body: SafeArea(
        child:
            !showTotalScore
                ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      QuestionItem(questionItem: questions[questionIndex]),
                      const SizedBox(height: 20),
                      Text(
                        'Step $questionCounter of ${questions.length}',
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 110, 183, 243),
                        ),
                      ),
                      Column(
                        children: List.generate(
                          questions[questionIndex].availableAnswers.length,
                          (index) => AnswerItem(
                            answerMap:
                                questions[questionIndex]
                                    .availableAnswers[index],
                            isAnswerChosen: answerChosen == index,
                            questionIndexChangeCallback: () {
                              setState(() {
                                answerChosen = index;
                              });
                            },
                            questionCounterFunction: () {
                              answerChosen = index;
                            },
                          ),
                        ),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 60,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            if (questionIndex + 1 < questions.length &&
                                questionCounter < questions.length) {
                              setState(() {
                                questionIndex += 1;
                                questionCounter += 1;
                              });
                            }
                            setState(() {
                              myTotalScore += 10;
                              answerChosen = -1;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Next Question",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
                : TotalScorePart(
                  myTotalScore: myTotalScore,
                  resetQuizOnPressed: () {
                    setState(() {
                      questionCounter = 1;
                      questionIndex = 0;
                      myTotalScore = 0;
                    });
                  },
                ),
      ),
    );
  }
}

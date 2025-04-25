import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question_item_model.dart';

class TotalScorePart extends StatelessWidget {

  final VoidCallback resetQuizOnPressed;
  final int myTotalScore;
  const TotalScorePart({
    super.key, 
    required this.myTotalScore, 
    required this.resetQuizOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '🎊🎉 Congratulations 🎉🎊',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 8.0
          ),
          Text(
            'Your total score is: $myTotalScore / ${questions.length * 10}',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
          const SizedBox(
            height: 8.0
          ),
          ElevatedButton(
            onPressed: resetQuizOnPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              "Restart Quiz",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

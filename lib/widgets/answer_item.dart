import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_item_model.dart';

class AnswerItem extends StatelessWidget {
  final AnswerItemModel answerMap;
  final VoidCallback questionIndexChangeCallback;
  final VoidCallback questionCounterFunction;
  final bool isAnswerChosen;

  const AnswerItem({
    super.key,
    required this.answerMap,
    required this.questionIndexChangeCallback,
    required this.questionCounterFunction,
    required this.isAnswerChosen
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SizedBox(
        height: 60,
        width: double.infinity,
        child: InkWell(
          onTap:
              () => {
                answerMap.onPressed(),
                questionIndexChangeCallback(),
                questionCounterFunction(),
              },
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.circular(8),
              color: isAnswerChosen ? Colors.blue : Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(
                    Icons.add, size: 30, 
                    color: isAnswerChosen ? Colors.white : Colors.blue
                  ),
                  const SizedBox(width: 16.0),
                  Text(
                    answerMap.title,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: isAnswerChosen ? Colors.white : Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

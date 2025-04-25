import 'package:flutter/material.dart';
import 'package:flutter_basics/models/question_item_model.dart';

class QuestionItem extends StatelessWidget {
  final QuestionItemModel questionItem;
  const QuestionItem({super.key, required this.questionItem});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            questionItem.title,
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
              color: Colors.blue,
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            'Answer and get points',
            style: Theme.of(context).textTheme.titleLarge!.copyWith(
              color: const Color.fromARGB(255, 110, 183, 243),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_basics/models/answer_item_model.dart';

class QuestionItemModel {
  final String title;
  final List<AnswerItemModel> availableAnswers;

  QuestionItemModel({
    required this.title,
    required this.availableAnswers,
  });
}

List<QuestionItemModel> questions = [
  QuestionItemModel(
    title: 'What is the capital of France ?',
    availableAnswers: [
    AnswerItemModel(
      title: 'Paris', 
      onPressed: () => debugPrint("Paris")
    ),
    AnswerItemModel(
      title: 'London', 
      onPressed: () => debugPrint("London")
    ),
    AnswerItemModel(
      title: 'Berlin', 
      onPressed: () => debugPrint("Berlin")
    ),
    AnswerItemModel(
      title: 'Madrid', 
      onPressed: () => debugPrint("Madrid")
    )
    ]
  ),
  QuestionItemModel(
    title: 'What is the capital of Germany ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Berlin',
        onPressed: () => debugPrint("Berlin"),
      ),
      AnswerItemModel(
        title: 'Paris',
        onPressed: () => debugPrint("Paris"),
      ),
      AnswerItemModel(
        title: 'London',
        onPressed: () => debugPrint("London"),
      ),
      AnswerItemModel(
        title: 'Madrid',
        onPressed: () => debugPrint("Madrid"),
      ),
    ]
  ),
  QuestionItemModel(
    title: 'What is the capital of Spain ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Madrid',
        onPressed: () => debugPrint("Madrid"),
      ),
      AnswerItemModel(
        title: 'Paris',
        onPressed: () => debugPrint("Paris"),
      ),
      AnswerItemModel(
        title: 'Berlin',
        onPressed: () => debugPrint("Berlin"),
      ),
      AnswerItemModel(
        title: 'London',
        onPressed: () => debugPrint("London"),
      ),
    ]
  ),
  QuestionItemModel(
    title: 'What is the capital of Italy ?',
    availableAnswers: [
      AnswerItemModel(
        title: 'Rome',
        onPressed: () => debugPrint("Rome"),
      ),
      AnswerItemModel(
        title: 'Paris',
        onPressed: () => debugPrint("Paris"),
      ),
      AnswerItemModel(
        title: 'Berlin',
        onPressed: () => debugPrint("Berlin"),
      ),
      AnswerItemModel(
        title: 'London',
        onPressed: () => debugPrint("London"),
      ),
    ]
  ),
  QuestionItemModel(
    title: 'What is the capital of Portugal ?',
    availableAnswers: <AnswerItemModel>[
      AnswerItemModel(
        title: 'Lisbon',
        onPressed: () => debugPrint("Lisbon"),
      ),
      AnswerItemModel(
        title: 'Paris',
        onPressed: () => debugPrint("Paris"),
      ),
      AnswerItemModel(
        title: 'Berlin',
        onPressed: () => debugPrint("Berlin"),
      ),
      AnswerItemModel(
        title: 'London',
        onPressed: () => debugPrint("London"),
      ),
    ]
  ),
];

import 'package:quiz_app/features/create_quize/domain/entities/test.dart';

class TestModel extends Test {
  String? questionImage;
  String question;
  String answer;
  String option1;
  String option2;
  String option3;
  int quiz;

  TestModel({
    this.questionImage,
    required this.question,
    required this.answer,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.quiz,
  }) : super(
            answer: answer,
            quetionImage: questionImage,
            quetion: question,
            option1: option1,
            option2: option2,
            option3: option3,
            quiz: quiz);

  factory TestModel.fromJson(Map<String, dynamic> json) {
    return TestModel(
      questionImage: json['question_image'],
      question: json['question'],
      answer: json['answer'],
      option1: json['option1'],
      option2: json['option2'],
      option3: json['option3'],
      quiz: json['quiz'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['question_image'] = this.questionImage;
    data['question'] = this.question;
    data['answer'] = this.answer;
    data['option1'] = this.option1;
    data['option2'] = this.option2;
    data['option3'] = this.option3;
    data['quiz'] = this.quiz;
    return data;
  }
}

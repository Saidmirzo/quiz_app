import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class Test extends Equatable {
  final String? quetionImage;
  final String quetion;
  final String answer;
  final String option1;
  final String option2;
  final String option3;
  final int quiz;
  Test({
    required this.quetion,
    required this.answer,
    required this.option1,
    required this.option2,
    required this.option3,
    required this.quiz,
     this.quetionImage,
  });

  @override
  List<Object?> get props => throw UnimplementedError();
}

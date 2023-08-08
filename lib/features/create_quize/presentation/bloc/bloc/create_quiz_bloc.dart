import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/features/create_quize/domain/entities/test.dart';

part 'create_quiz_event.dart';
part 'create_quiz_state.dart';

class CreateQuizBloc extends Bloc<CreateQuizEvent, CreateQuizState> {
  List<Test> listTests = [];
  CreateQuizBloc() : super(CreateQuizInitial()) {
    on<CreateQuizEvent>((event, emit) {});
    on<ShowAnswerDialog>(
      (event, emit) {},
    );
    on<AddQuetionEvevnt>((event, emit) {
      listTests.add(event.testModel);
    });
  }
}

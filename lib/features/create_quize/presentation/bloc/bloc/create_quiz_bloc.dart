import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'create_quiz_event.dart';
part 'create_quiz_state.dart';

class CreateQuizBloc extends Bloc<CreateQuizEvent, CreateQuizState> {
  CreateQuizBloc() : super(CreateQuizInitial()) {
    on<CreateQuizEvent>((event, emit) {});
    on<ShowAnswerDialog>(
      (event, emit) {
        
      },
    );
  }
}

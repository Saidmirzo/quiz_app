part of 'create_quiz_bloc.dart';

@immutable
abstract class CreateQuizEvent {}

class ShowAnswerDialog extends CreateQuizEvent {
  final TextEditingController textEditingController;
  ShowAnswerDialog({required this.textEditingController});
  
}

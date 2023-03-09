part of 'create_quiz_bloc.dart';

@immutable
abstract class CreateQuizState extends Equatable {
  @override
  List<Object?> get props => throw UnimplementedError();
}

class CreateQuizInitial extends CreateQuizState {}

class CreateQuizLoadingState extends CreateQuizState {}

class CreateQuizLadedState extends CreateQuizState {}

class CreateQuizErrorState extends CreateQuizState {
  final String message;
  CreateQuizErrorState({required this.message});
  @override
  List<Object?> get props => [message];
}

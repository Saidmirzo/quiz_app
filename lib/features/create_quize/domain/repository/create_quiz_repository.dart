import 'package:dartz/dartz.dart';
import 'package:quiz_app/core/errors/failures.dart';

abstract class CreateQuizRepository {
  Future<void>  createQuiz();
}

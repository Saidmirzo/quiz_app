abstract class QuizRemoteDataSourse {
  Future<void> postQuiz();
}
class QuizRemoteDataSourseImpl implements QuizRemoteDataSourse{
  @override
  Future<void> postQuiz() {
    throw UnimplementedError();
  }

}
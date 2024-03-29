import 'package:flutter/material.dart';
import 'package:quiz_app/features/create_quize/presentation/pages/create_quize_multiple.dart';
import 'package:quiz_app/features/create_quize/presentation/pages/review_page.dart';
import 'package:quiz_app/features/home/presentation/pages/home_page.dart';
import 'features/create_quize/presentation/pages/choose_subjects_page.dart';
import 'features/create_quize/presentation/pages/create_quize_page.dart';


class Routes {
  static const createQuizePage = '/createQuizePage';
  static const chooseSubjectsPage = '/chooseSubjectsPage';
  static const createQuizeMultiple = '/createQuizeMultiple';
  static const reviewPage = '/reviewPage';
  static const homePage = '/';
  

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    try {
      final Map<String, dynamic>? args =
          routeSettings.arguments as Map<String, dynamic>?;
      args ?? <String, dynamic>{};
      switch (routeSettings.name) {
        case createQuizePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CreateQuizePage(),
          );
        
        case chooseSubjectsPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const ChooseSubjectsPage(),
          );
        case createQuizeMultiple:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CreateQuizeMultiple(),
          );
        case reviewPage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const ReviewPage(),
          );
        case homePage:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const HomePage(),
          );
        default:
          return MaterialPageRoute(
            settings: routeSettings,
            builder: (_) => const CreateQuizePage(),
          );
      }
    } catch (e) {
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const CreateQuizePage(),
      );
    }
  }
}

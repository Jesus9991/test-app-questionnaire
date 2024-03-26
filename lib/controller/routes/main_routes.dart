import 'package:flutter/material.dart';
import 'package:test_questionnaire/controller/export/screens_export.dart';

/*
manejo de rutas, de forma optmizada, en caso de usar solo se debe llamar la clase y a la ruta que se quiere navegar
*/
class MainRoutes {
  static const initialRoute = '/initial_route';
  static const secondRoute = '/second_route';
  static const thirdRoute = '/third_route';

  static Map<String, Widget Function(BuildContext)> routes = {
    /*-----RUTA INICIAL------*/
    initialRoute: (_) => const HomeScreen(),
    secondRoute: (_) => const SecondQuestionnaireScreen(),
    thirdRoute: (_) => const ThirdQuestionnaireScreen(),
  };
}

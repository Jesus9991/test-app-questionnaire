import 'package:flutter/material.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';
import 'package:test_questionnaire/controller/routes/main_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Questionario',
      themeMode: ThemeMode.system,
      darkTheme: MainTheme.blackTheme,
      theme: MainTheme.whiteTheme,
      routes: MainRoutes.routes,
      initialRoute: MainRoutes.initialRoute,
    );
  }
}

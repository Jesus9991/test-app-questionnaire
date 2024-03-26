import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';
import 'package:test_questionnaire/controller/routes/main_routes.dart';

void main() {
  runApp(const StateApp());
}

class StateApp extends StatelessWidget {
  const StateApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SaveDataInputProvider()),
        ChangeNotifierProvider(
            create: (context) => SecondSaveDataInputsProvider()),
        ChangeNotifierProvider(create: (context) => ThirdSaveInputsProvider()),
      ],
      child: const MyApp(),
    );
  }
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

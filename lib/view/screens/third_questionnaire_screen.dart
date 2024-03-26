import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';
import 'package:test_questionnaire/view/components/inputs_components.dart';

class ThirdQuestionnaireScreen extends StatefulWidget {
  const ThirdQuestionnaireScreen({super.key});

  @override
  State<ThirdQuestionnaireScreen> createState() =>
      _ThirdQuestionnaireScreenState();
}

class _ThirdQuestionnaireScreenState extends State<ThirdQuestionnaireScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final thirdProvider = Provider.of<ThirdSaveInputsProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuestionario'),
      ),
      body: FadeIn(
        child: Form(
          key: formKey,
          child: ListView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: EdgeInsets.symmetric(horizontal: size.width * .03),
            children: [
              const NumberOfQuestion(title: '3'),
              SizedBox(height: size.height * .02),

              /*pregunta  #1*/
              const TitleQuestion(
                  title: '¿Qué tipo de música prefieres escuchar?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              CheckComponents(
                answer: '',
                selectValue: '',
                items: const ["Rock", "Rap", "Tango"],
                onSelect: (val) => thirdProvider.firtQuestions(val),
              ),
              SizedBox(height: size.height * .02),
              /*pregunta  #2*/
              const TitleQuestion(title: '¿Qué superpoder te gustaría tener?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              CheckComponents(
                answer: '',
                selectValue: '',
                items: const ["Volar", "Super fuerza", "Invisibilidad"],
                onSelect: (val) => thirdProvider.secondQuestions(val),
              ),
              SizedBox(height: size.height * .02),

              /*pregunta  #2*/
              const TitleQuestion(title: '¿Prefieres el verano o el invierno?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              CheckComponents(
                answer: '',
                selectValue: '',
                items: const ["Verano", "Invierno", "Ambos"],
                onSelect: (val) => thirdProvider.thirdQuestions(val),
              ),
              SizedBox(height: size.height * .03),
              ButtonComponents(
                title: 'Continuar',
                onPressed: () async {
                  /*guarda los datos en la base */
                  await thirdProvider.saveDataToDatabase();
                  /*muestra un show modal */
                  SnackBarWidget.showSnackBar(
                      context, 'Datos guardados', Icons.check_circle_rounded);
                },
              ),
              SizedBox(height: size.height * .07),
            ],
          ),
        ),
      ),
    );
  }
}

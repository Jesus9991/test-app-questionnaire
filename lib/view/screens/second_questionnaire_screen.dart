import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';
import 'package:test_questionnaire/controller/routes/main_routes.dart';
import 'package:test_questionnaire/view/components/inputs_components.dart';

class SecondQuestionnaireScreen extends StatefulWidget {
  const SecondQuestionnaireScreen({super.key});

  @override
  State<SecondQuestionnaireScreen> createState() =>
      _SecondQuestionnaireScreenState();
}

class _SecondQuestionnaireScreenState extends State<SecondQuestionnaireScreen> {
  /*key para validar el estado del form */
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuestionario'),
      ),
      body: Form(
        key: formKey,
        child: FadeIn(
          child: ListView(
            physics: const BouncingScrollPhysics(),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: EdgeInsets.symmetric(horizontal: size.width * .03),
            children: [
              const NumberOfQuestion(title: '2'),
              SizedBox(height: size.height * .02),
              /*pregunta  #1*/
              const TitleQuestion(title: '¿Cuál es tu estado civil?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              DropdownComponents(
                initialValue: '',
                hintext: ' Seleccionar estado civil',
                items: const [
                  'Soltero/a',
                  'Casado/a',
                  'Viuda/a',
                ],
                onChanged: (val) {},
              ),
              SizedBox(height: size.height * .02),
              /*pregunta  #2*/
              const TitleQuestion(
                  title:
                      '¿Cuánto tiempo al día pasas en promedio en internet?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              DropdownComponents(
                initialValue: '',
                hintext: ' Seleccionar promedio',
                items: const [
                  '2 horas',
                  '5 horas',
                  '+10 horas',
                ],
                onChanged: (val) {},
              ),
              SizedBox(height: size.height * .02),
              /*pregunta  #3*/
              const TitleQuestion(title: '¿Con qué frecuencia sueles viajar?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              DropdownComponents(
                initialValue: '',
                hintext: ' Seleccionar frecuencia',
                items: const [
                  'Cada fin de semana',
                  '1 vez al año',
                  'Nunca viajo',
                ],
                onChanged: (val) {},
              ),
              SizedBox(height: size.height * .03),
              ButtonComponents(
                title: 'Continuar',
                onPressed: () {
                  Navigator.pushNamed(context, MainRoutes.thirdRoute);
                  // if (formKey.currentState!.validate()) {
                  //   //
                  // }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

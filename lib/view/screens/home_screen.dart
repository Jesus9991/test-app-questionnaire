import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';
import 'package:test_questionnaire/controller/routes/main_routes.dart';
import 'package:test_questionnaire/view/components/inputs_components.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
              const NumberOfQuestion(title: '1'),
              SizedBox(height: size.height * .02),
              /*pregunta #1 */
              const TitleQuestion(title: '¿Cuál es tu nombre completo?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              InputComponents(
                hintext: ' Ingresar nombre',
                keyboardType: TextInputType.text,
                validator: (val) => ValidationInputs.inputEmpty(val),
                onChanged: (val) {},
              ),
              SizedBox(height: size.height * .02),
              /*pregunta #3*/
              const TitleQuestion(title: '¿Cuál es tu comida favorita?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              InputComponents(
                hintext: ' Ingresar comida favorita',
                keyboardType: TextInputType.text,
                maxLine: 3,
                validator: (val) => ValidationInputs.inputEmpty(val),
                onChanged: (val) {},
              ),
              SizedBox(height: size.height * .02),
              /*pregunta #2 */
              const TitleQuestion(
                  title:
                      '¿Cuáles son tus pasatiempos o intereses principales?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              InputComponents(
                hintext: ' Ingresar pasatiempos',
                keyboardType: TextInputType.text,
                maxLine: 3,
                validator: (val) => ValidationInputs.inputEmpty(val),
                onChanged: (val) {},
              ),
              SizedBox(height: size.height * .03),
              ButtonComponents(
                title: 'Continuar',
                onPressed: () {
                  Navigator.pushNamed(context, MainRoutes.secondRoute);
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

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';
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
    final saveProvider = Provider.of<SaveDataInputProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuestionario'),
        actions: [
          IconButton(
              onPressed: () => saveProvider.setProviderData(),
              icon: const Icon(IconlyLight.delete))
        ],
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
                controller: saveProvider.firtQuestionText,
                keyboardType: TextInputType.text,
                validator: (val) => ValidationInputs.inputEmpty(val),
                onChanged: (val) => saveProvider.firtQuestions(val),
              ),
              SizedBox(height: size.height * .02),
              /*pregunta #2*/
              const TitleQuestion(title: '¿Cuál es tu comida favorita?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              InputComponents(
                hintext: ' Ingresar comida favorita',
                controller: saveProvider.secondQuestionText,
                keyboardType: TextInputType.text,
                maxLine: 3,
                validator: (val) => ValidationInputs.inputEmpty(val),
                onChanged: (val) => saveProvider.secondQuestions(val),
              ),
              SizedBox(height: size.height * .02),
              /*pregunta #3 */
              const TitleQuestion(
                  title:
                      '¿Cuáles son tus pasatiempos o intereses principales?'),
              SizedBox(height: size.height * .02),
              /*respuesta*/
              InputComponents(
                hintext: ' Ingresar pasatiempos',
                controller: saveProvider.thirdQuestionText,
                keyboardType: TextInputType.text,
                maxLine: 3,
                validator: (val) => ValidationInputs.inputEmpty(val),
                onChanged: (val) => saveProvider.thirdQuestions(val),
              ),
              SizedBox(height: size.height * .03),
              ButtonComponents(
                title: 'Continuar',
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    /*guarda los datos en la base */
                    await saveProvider.saveDataToDatabase();
                    /*muestra un show modal */
                    SnackBarWidget.showSnackBar(
                        context, 'Datos guardados', Icons.check_circle_rounded);
                    /*navega a la siguiente pantalla*/
                    Navigator.pushNamed(context, MainRoutes.secondRoute);
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

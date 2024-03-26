import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';

/*
gestor de estado para almacenar momentaneamente los datos escritos por el usuario
*/
class SaveDataInputProvider extends ChangeNotifier {
/*primera pregunta*/
  final TextEditingController _firtQuestion = TextEditingController();
  TextEditingController get firtQuestionText => _firtQuestion;
  void firtQuestions(String data) {
    _firtQuestion.text = data;
    notifyListeners();
  }

  /*segunda pregunta */
  final TextEditingController _secondQuestion = TextEditingController();
  TextEditingController get secondQuestionText => _secondQuestion;
  void secondQuestions(String data) {
    _secondQuestion.text = data;
    notifyListeners();
  }

  /*tercera pregunta*/
  final TextEditingController _thirdQuestion = TextEditingController();
  TextEditingController get thirdQuestionText => _thirdQuestion;
  void thirdQuestions(String data) {
    _thirdQuestion.text = data;
    notifyListeners();
  }

  /*inserta los datos en la base */
  Future<void> saveDataToDatabase() async {
    await DatabaseHelper.instance.insertData(
        _firtQuestion.text, _secondQuestion.text, _thirdQuestion.text);
  }

  /*elimina todo lo escrito en el provider*/
  setProviderData() {
    firtQuestionText.clear();
    secondQuestionText.clear();
    thirdQuestionText.clear();
    notifyListeners();
  }
}

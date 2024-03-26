//uso: clases para manejar todas las validaciones de la app ,en los inputs
class ValidationInputs {
  /*inputs donde el usuario tenga que escribir */
  static String? inputEmpty(String? value) {
    if (value == null) return 'Parece que este campo está vacío.';
    if (value.isEmpty) return 'Parece que este campo está vacío.';
    // if (value.length.i) return 'Mínimo 3 caracteres';
    return null;
  }

  /*para inputs de tipo select */
  static String? inputTypeSelect(String? value) {
    if (value == null) return 'Por favor, seleccione una opción';
    if (value.isEmpty) return 'Por favor, seleccione una opción';
    // if (value.length.i) return 'Mínimo 3 caracteres';
    return null;
  }
}

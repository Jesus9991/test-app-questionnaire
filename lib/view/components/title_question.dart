import 'package:flutter/material.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';

class TitleQuestion extends StatelessWidget {
  final String title;
  const TitleQuestion({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 4,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.start,
    );
  }
}

/*
richtext para que el usuario sepa en cuantas preguntas resueltas lleva
*/
class NumberOfQuestion extends StatelessWidget {
  final String title;
  const NumberOfQuestion({
    super.key,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.end,
      text: TextSpan(
        text: title,
        style: Theme.of(context).textTheme.bodyLarge,
        children: [
          TextSpan(
              text: '/3 respuestas',
              style: TextsMainTheme.typeFont.copyWith(
                  color: PaletteColorsTheme.purpleColor,
                  fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}

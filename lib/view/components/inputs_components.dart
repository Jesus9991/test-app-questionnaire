import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_questionnaire/controller/export/components_exports.dart';

class InputComponents extends StatelessWidget {
  final String hintext;
  final String? initialValue;
  final bool? enabled;
  final int? maxLine;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? Function(String? value) validator;
  final void Function(String value) onChanged;
  const InputComponents({
    super.key,
    required this.hintext,
    this.initialValue,
    this.enabled,
    this.maxLine,
    this.keyboardType,
    this.textInputAction,
    this.controller,
    required this.validator,
    required this.onChanged,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      initialValue: initialValue,
      enabled: enabled,
      style: Theme.of(context).textTheme.bodyLarge,
      maxLines: maxLine ?? 1,
      cursorColor: PaletteColorsTheme.purpleColor,
      keyboardType: keyboardType ?? TextInputType.text,
      onChanged: (value) => onChanged(value),
      validator: (value) => validator(value),
      textInputAction: textInputAction ?? TextInputAction.done,
      decoration: InputDecoration(
          hintText: hintext, hintStyle: Theme.of(context).textTheme.labelLarge),
    );
  }
}

/*
inputs tipo Dropdown 
*/

class DropdownComponents extends StatefulWidget {
  final String hintext;
  final String initialValue;
  final List<String> items;

  final void Function(Object? value) onChanged;
  const DropdownComponents({
    super.key,
    required this.initialValue,
    required this.hintext,
    required this.items,
    required this.onChanged,
  });

  @override
  State<DropdownComponents> createState() => _DropdownComponentsState();
}

class _DropdownComponentsState extends State<DropdownComponents> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      decoration: InputDecoration(
          hintText: widget.hintext,
          hintStyle: Theme.of(context).textTheme.labelLarge),
      items: widget.items.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(items),
        );
      }).toList(),
      onChanged: (value) => widget.onChanged(value),
    );
  }
}

/*
check box
*/

class CheckComponents extends StatefulWidget {
  final String answer;
  final String selectValue;
  final List<String> items;
  final Function onSelect;
  const CheckComponents({
    super.key,
    required this.answer,
    required this.selectValue,
    required this.items,
    required this.onSelect,
  });

  @override
  State<CheckComponents> createState() => _CheckComponentsState();
}

class _CheckComponentsState extends State<CheckComponents> {
  int indexSelect = 5;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: List.generate(3, (index) {
        return Container(
          height: size.height * .06,
          width: size.width,
          margin: EdgeInsets.symmetric(vertical: size.height * .01),
          decoration: BoxDecoration(
              border: Border.all(
                  color: indexSelect == index
                      ? PaletteColorsTheme.purpleColor
                      : PaletteColorsTheme.greyColor),
              borderRadius: BorderRadius.circular(10)),
          child: InkWell(
            onTap: () {
              setState(() => indexSelect = index);
              widget.onSelect();
            },
            child: Row(
              children: [
                SizedBox(width: size.width * .02),
                Icon(indexSelect == index
                    ? Icons.check_circle
                    : Icons.check_circle_outlined),
                SizedBox(width: size.width * .02),
                SizedBox(
                  width: size.width * .7,
                  child: Text(
                    widget.items[index],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:screl_test_1/core/theme/colorpalet.dart';
import 'package:screl_test_1/core/theme/extension/app_theme_extension.dart';

class TextfeildWidget extends StatelessWidget {
  const TextfeildWidget({
    super.key,
    this.maxlength,
    required this.controller,
    required this.validator,
    required this.hintTxt,
    this.maxLines,
  });

  final TextEditingController controller;
  final int? maxlength;
  final String? Function(String?)? validator;
  final String? hintTxt;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        maxLines: maxLines,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintTxt,
          hintStyle: TextStyle(color: context.colors.textSubtle),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: context.colors.textSubtle)),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: AppColorPalettes.orenge600),
          ),
        ),
        maxLength: maxlength,
        validator: validator);
  }
}

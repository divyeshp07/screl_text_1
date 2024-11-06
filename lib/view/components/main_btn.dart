import 'package:flutter/material.dart';
import 'package:screl_test_1/core/theme/colorpalet.dart';

class MainBtn extends StatelessWidget {
  const MainBtn({
    super.key,
    required this.flex,
    required this.onPress,
    required this.text,
    this.background,
    this.colorborder,
    this.foreground,
  });
  final int flex;
  final Function() onPress;
  final String text;
  final Color? foreground;
  final Color? background;
  final Color? colorborder;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: OutlinedButton(
        onPressed: onPress,
        style: OutlinedButton.styleFrom(
          foregroundColor: foreground,
          // AppColorPalettes.orenge600
          backgroundColor: background,

          side: BorderSide(color: colorborder ?? AppColorPalettes.orenge600),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        child: Text(text),
      ),
    );
  }
}

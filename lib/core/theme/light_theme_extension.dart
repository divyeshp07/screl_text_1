import 'package:flutter/material.dart';

import 'package:screl_test_1/core/theme/colorpalet.dart';
import 'package:screl_test_1/core/theme/extension/app_color_extension.dart';
import 'package:screl_test_1/core/theme/extension/space_extension.dart';
import 'package:screl_test_1/core/theme/extension/typography_extension.dart';

final lighttheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColorPalettes.grey100,
    appBarTheme: const AppBarTheme(backgroundColor: AppColorPalettes.grey100),
    fontFamily: 'Poppins',
    primaryColor: AppColorPalettes.orenge300,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColorPalettes.orenge300),
    extensions: [
      /// AppColorExtension
      AppColorExtension(
        primary: AppColorPalettes.orenge300,
        secondary: AppColorPalettes.white500,
        text: AppColorPalettes.grey1000,
        textSubtle: AppColorPalettes.grey800,
        btnText: AppColorPalettes.white500,
        border: AppColorPalettes.orenge600,
      ),

      ///AppSpaceExtension
      AppSpaceExtension.fromBaseSpace(8),

      ///AppTypographyExtension
      AppTypographyExtension(
        body: const TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w500),
        bodyWhite: const TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            color: AppColorPalettes.white500,
            fontWeight: FontWeight.w500),
        bodyLarge: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w500),
        bodySemibold: const TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w600),
        bodyLargeSemiBold: const TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w600),
        bodySmall: const TextStyle(
            fontSize: 10,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w500),
        bodySmallSemiBold: const TextStyle(
            fontSize: 10,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w600),
        h1: const TextStyle(
            fontSize: 32,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w500),
        h1SemiBold: const TextStyle(
            fontSize: 32,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w600),
        h1Bold: const TextStyle(
            fontSize: 32,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w700),
        h2: const TextStyle(
            fontSize: 24,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w500),
        h2SemiBold: const TextStyle(
            fontSize: 24,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w600),
        h2Bold: const TextStyle(
            fontSize: 24,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w700),
        h3: const TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w500),
        h3SemiBold: const TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w600),
        h3Bold: const TextStyle(
            fontSize: 20,
            fontFamily: 'Poppins',
            color: AppColorPalettes.black500,
            fontWeight: FontWeight.w700),
        buttonText: const TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          color: AppColorPalettes.white500,
          fontWeight: FontWeight.w600,
        ),
      ),
    ]);

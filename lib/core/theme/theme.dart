import 'package:crypto/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static OutlineInputBorder _border([Color color = AppPallete.borderColor]) =>
      OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 3),
        borderRadius: BorderRadius.circular(10),
      );

  static const LinearGradient scaffoldBackgroundGradient = LinearGradient(
    colors: [Color(0xFF7969FC), Color(0xFFF1F0FE), Color(0xFF634CE7)],
    begin: Alignment.center,
    end: Alignment.bottomRight,
  );

  static final lightThemeMode = ThemeData.light().copyWith(
    textTheme: ThemeData.light().textTheme.apply(
          bodyColor: AppPallete.textColor,
          fontFamily: 'ProductSans',
        ),
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(color: AppPallete.hintTextColor),
      contentPadding: EdgeInsets.all(16),
      enabledBorder: _border(),
      focusedBorder: _border(),
      errorBorder: _border(AppPallete.errorColor),
      focusedErrorBorder: _border(AppPallete.errorColor),
    ),
  );
}

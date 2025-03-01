import 'package:crypto/core/theme/app_pallete.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  final String text;
  const AuthButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 58,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppPallete.primaryColor,
          borderRadius: BorderRadius.circular(12)),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AppPallete.transparentColor),
          onPressed: () {},
          child: Text(text,
              style: TextStyle(color: AppPallete.whiteColor, fontSize: 16))),
    );
  }
}

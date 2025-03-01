import 'package:flutter/material.dart';

class AuthInputField extends StatelessWidget {
  final String hintText;
  final bool isObsecure;
  final Widget icon;

  const AuthInputField({
    super.key,
    required this.hintText,
    this.isObsecure = false,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(prefixIcon: icon, hintText: hintText),
    );
  }
}


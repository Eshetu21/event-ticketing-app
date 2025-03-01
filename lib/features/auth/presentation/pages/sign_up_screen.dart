import 'package:crypto/features/auth/presentation/pages/login_screen.dart';
import 'package:crypto/features/auth/presentation/widgets/auth_common_widgets.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Text("Sign up",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 25),
            AuthCommonWidgets.authInputField(
                "Full Name", "assets/icons/profile.png"),
            SizedBox(height: 10),
            AuthCommonWidgets.authInputField("Email", "assets/icons/mail.png"),
            SizedBox(height: 10),
            AuthCommonWidgets.authInputField(
                "Password", "assets/icons/password.png"),
            SizedBox(height: 10),
            AuthCommonWidgets.authInputField(
                "Confirm Password", "assets/icons/password.png"),
            SizedBox(height: 10),
            AuthCommonWidgets.authButton("SIGN UP"),
            SizedBox(height: 10),
            AuthCommonWidgets.orDividerWithGoogle("Sign up with google"),
            SizedBox(height: 20),
            AuthCommonWidgets.authFooterText(context,
                "Already have an account? ", "Sign in", LoginScreen(), true),
          ],
        ),
      ),
    );
  }
}

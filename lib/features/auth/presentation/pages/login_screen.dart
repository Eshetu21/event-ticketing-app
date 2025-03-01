import 'package:crypto/features/auth/presentation/pages/sign_up_screen.dart';
import 'package:crypto/features/auth/presentation/widgets/auth_common_widgets.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      body: Container(
        margin: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/icons/event.png"),
                Column(children: [
                  Text("AGAFARI", style: TextStyle(fontSize: 28)),
                  Text("EVENTS", style: TextStyle(fontSize: 28))
                ]),
              ],
            ),
            SizedBox(height: 55),
            Align(
              alignment: Alignment.topLeft,
              child: Text("Sign in",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 15),
            AuthCommonWidgets.authInputField("Email", "assets/icons/mail.png"),
            SizedBox(height: 10),
            AuthCommonWidgets.authInputField(
                "Password", "assets/icons/password.png"),
            SizedBox(height: 10),
            Align(
                alignment: Alignment.bottomRight,
                child: Text("Forgot password?")),
            AuthCommonWidgets.authButton("SIGN IN"),
            SizedBox(height: 10),
            AuthCommonWidgets.orDividerWithGoogle("Sign in with google"),
            SizedBox(height: 20),
            AuthCommonWidgets.authFooterText(context, "Don't have an account? ",
                "Sign up", SignupScreen(), false),
          ],
        ),
      ),
    );
  }
}

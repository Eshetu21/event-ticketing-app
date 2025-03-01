import 'package:crypto/features/auth/presentation/widgets/auth_input_field.dart';
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
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text("Sign in",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            SizedBox(height: 15),
            AuthInputField(
              hintText: "abc@email.com",
              icon: Image.asset("assets/icons/mail.png"),
            ),
            SizedBox(height: 10),
            AuthInputField(
              hintText: "your password",
              icon: Image.asset("assets/icons/password.png"),
            ),
            SizedBox(height: 10),
            Align(
                alignment: Alignment.bottomRight,
                child: Text("Forgot password?"))
          ],
        ),
      ),
    );
  }
}

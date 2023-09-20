import 'package:flutter/material.dart';
import 'package:wake_kub_frontend/widgets/rounded_text_field.dart';
import 'package:wake_kub_frontend/widgets/text_custom.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const TextCustom(
            text: "Wake Kub",
            size: 40,
            isBold: true,
          ),
          RoundedTextField(
            hintText: "Email",
            onChanged: (value) {},
          ),
          RoundedTextField(
            hintText: "Password",
            icon: Icons.lock,
            onChanged: (value) {},
            isPassword: true,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent),
            onPressed: () {},
            child: const Text(
              "Sign in",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

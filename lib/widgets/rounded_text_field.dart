import 'package:flutter/material.dart';
import 'package:wake_kub_frontend/widgets/components/text_field_container.dart';

class RoundedTextField extends StatelessWidget {
  const RoundedTextField({
    super.key,
    required this.hintText,
    this.icon = Icons.person,
    this.isPassword = false,
    this.onChanged,
  });

  final String hintText;
  final IconData icon;
  final ValueChanged<String>? onChanged;
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.white),
          border: InputBorder.none,
        ),
        onChanged: onChanged,
      ),
    );
  }
}

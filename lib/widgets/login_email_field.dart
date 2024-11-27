import 'package:flutter/material.dart';

class LoginEmailField extends StatelessWidget {
  final TextEditingController controller;

  LoginEmailField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: 'Email',
        hintStyle: TextStyle(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFF37021)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}

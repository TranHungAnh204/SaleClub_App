import 'package:flutter/material.dart';

class LoginPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final bool isPasswordVisible;
  final VoidCallback onVisibilityChanged;

  LoginPasswordField({
    required this.controller,
    required this.isPasswordVisible,
    required this.onVisibilityChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: !isPasswordVisible,
      decoration: InputDecoration(
        hintText: 'Mật khẩu',
        hintStyle: TextStyle(color: Colors.grey),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFF37021)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordVisible ? Icons.visibility : Icons.visibility_off,
          ),
          onPressed: onVisibilityChanged,
        ),
      ),
    );
  }
}

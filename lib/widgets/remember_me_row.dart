import 'package:flutter/material.dart';

class RememberMeRow extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  RememberMeRow({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onChanged,
        ),
        Text('Nhớ mật khẩu'),
        Spacer(),
        GestureDetector(
          onTap: () {
            // Logic for "Forgot Password"
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Quên mật khẩu?',
              style: TextStyle(
                color: Color(0xFF4564ED),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


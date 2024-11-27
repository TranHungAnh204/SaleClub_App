import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Colors.grey)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Hoặc',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
        Expanded(child: Divider(color: Colors.grey)),
      ],
    );
  }
}

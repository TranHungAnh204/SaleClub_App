import 'package:flutter/material.dart';

class ServiceButton extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback onTap; // Callback để xử lý khi nhấn vào nút

  const ServiceButton({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Kích hoạt callback khi nhấn vào
      child: Column(
        children: [
          Image.asset(icon, width: 50, height: 50),
          SizedBox(height: 4),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

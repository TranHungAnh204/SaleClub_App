import 'package:flutter/material.dart';
import '../view_models/home_view_model.dart'; // Đừng quên import ViewModel

class MoneyInfoWidget extends StatelessWidget {
  final HomeViewModel viewModel;

  const MoneyInfoWidget({Key? key, required this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: IntrinsicWidth(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: [
              Image.asset('assets/foxpay.png', width: 24, height: 24),
              SizedBox(width: 8),
              Flexible(
                child: Text(
                  viewModel.isMoneyVisible ? "65.180.000đ" : "**********",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(width: 8),
              GestureDetector(
                onTap: viewModel.toggleMoneyVisibility,
                child: Image.asset(
                  viewModel.isMoneyVisible
                      ? 'assets/eye_opened.png'
                      : 'assets/eye_closed.png',
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

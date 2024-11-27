import 'package:flutter/material.dart';

class LoginViewModel extends ChangeNotifier {
  final String _correctEmail = "Hungnk18@fot.com.vn";
  final String _correctPassword = "A@123123";

  String? errorMessage;
  bool isError = false;

  bool validateCredentials(String email, String password) {
    if (email == _correctEmail && password == _correctPassword) {
      errorMessage = null;
      isError = false;
      return true;
    } else {
      errorMessage = "Sai mật khẩu. Vui lòng thử lại.";
      isError = true;
      notifyListeners();
      return false;
    }
  }
}
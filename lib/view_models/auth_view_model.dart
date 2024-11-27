import 'package:flutter/material.dart';
import 'package:saleclub/services/auth_service.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService _authService = AuthService();
  String? _errorMessage;
  String? _token;

  String? get errorMessage => _errorMessage;
  String? get token => _token;

  Future<void> login(String email, String password) async {
    try {
      _token = await _authService.login(email, password);
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to login';
    }
    notifyListeners();
  }

  Future<void> register(String email, String password) async {
    try {
      await _authService.register(email, password);
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to register';
    }
    notifyListeners();
  }
}
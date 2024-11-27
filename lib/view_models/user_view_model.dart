import 'package:flutter/material.dart';
import 'package:saleclub/services/user_service.dart';
import 'package:saleclub/models/user.dart';
import 'package:saleclub/view_models/auth_view_model.dart';

class UserViewModel extends ChangeNotifier {
  final AuthViewModel _authViewModel;
  UserService? _userService;
  User? _userInfo;
  String? _errorMessage;
  bool? _notificationsEnabled;

  UserViewModel(this._authViewModel) {
    _userService = UserService(_authViewModel.token!);
  }

  User? get userInfo => _userInfo;
  String? get errorMessage => _errorMessage;
  bool? get notificationsEnabled => _notificationsEnabled;

  Future<void> fetchUserInfo() async {
    try {
      _userInfo = await _userService!.getUserInfo();
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to fetch user info';
    }
    notifyListeners();
  }

  Future<void> fetchUserNotificationConfig() async {
    try {
      _notificationsEnabled = await _userService!.getUserNotificationConfig();
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to fetch notification config';
    }
    notifyListeners();
  }

  Future<void> toggleUserNotificationConfig() async {
    try {
      _notificationsEnabled = !_notificationsEnabled!;
      await _userService!.updateUserNotificationConfig(_notificationsEnabled!);
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to update notification config';
    }
    notifyListeners();
  }
}
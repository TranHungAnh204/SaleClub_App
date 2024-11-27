import 'package:flutter/material.dart';
import 'package:saleclub/services/notification_service.dart';
import 'package:saleclub/models/notification.dart' as saleclub;
import 'package:saleclub/view_models/auth_view_model.dart';

class NotificationViewModel extends ChangeNotifier {
  final AuthViewModel _authViewModel;
  NotificationService? _notificationService;
  List<saleclub.Notification>? _notifications;
  String? _errorMessage;

  NotificationViewModel(this._authViewModel) {
    _notificationService = NotificationService(_authViewModel.token!);
  }

  List<saleclub.Notification>? get notifications => _notifications;
  String? get errorMessage => _errorMessage;

  Future<void> fetchNotifications() async {
    try {
      _notifications = await _notificationService!.getNotifications();
      _errorMessage = null;
    } catch (e) {
      _errorMessage = 'Failed to fetch notifications';
    }
    notifyListeners();
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saleclub/view_models/notification_view_model.dart';
import 'package:saleclub/view_models/auth_view_model.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context, listen: false);

    return ChangeNotifierProvider(
      create: (_) => NotificationViewModel(authViewModel)..fetchNotifications(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Notifications'),
        ),
        body: Consumer<NotificationViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.notifications != null) {
              return ListView.builder(
                itemCount: viewModel.notifications!.length,
                itemBuilder: (context, index) {
                  final notification = viewModel.notifications![index];
                  return ListTile(
                    title: Text(notification.title),
                    subtitle: Text(notification.body),
                    trailing: Text(notification.date),
                  );
                },
              );
            } else if (viewModel.errorMessage != null) {
              return Center(child: Text(viewModel.errorMessage!));
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
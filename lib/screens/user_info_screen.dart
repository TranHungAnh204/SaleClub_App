import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saleclub/view_models/user_view_model.dart';
import 'package:saleclub/view_models/auth_view_model.dart';

class UserInfoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModel>(context, listen: false);

    return ChangeNotifierProvider(
      create: (_) => UserViewModel(authViewModel)
        ..fetchUserInfo()
        ..fetchUserNotificationConfig(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('User Info'),
        ),
        body: Consumer<UserViewModel>(
          builder: (context, viewModel, child) {
            if (viewModel.userInfo != null) {
              return Column(
                children: [
                  Text('Name: ${viewModel.userInfo!.name}'),
                  Text('Email: ${viewModel.userInfo!.email}'),
                  SwitchListTile(
                    title: Text('Enable Notifications'),
                    value: viewModel.notificationsEnabled ?? false,
                    onChanged: (value) {
                      viewModel.toggleUserNotificationConfig();
                    },
                  ),
                ],
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
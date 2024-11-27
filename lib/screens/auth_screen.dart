import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saleclub/view_models/auth_view_model.dart';

class AuthScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => AuthViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Auth'),
        ),
        body: Consumer<AuthViewModel>(
          builder: (context, viewModel, child) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    controller: _passwordController,
                    decoration: InputDecoration(labelText: 'Password'),
                    obscureText: true,
                  ),
                  if (viewModel.errorMessage != null)
                    Text(
                      viewModel.errorMessage!,
                      style: TextStyle(color: Colors.red),
                    ),
                  ElevatedButton(
                    onPressed: () async {
                      await viewModel.register(
                        _emailController.text,
                        _passwordController.text,
                      );
                    },
                    child: Text('Register'),
                  ),
                  ElevatedButton(
                    onPressed: () async {
                      await viewModel.login(
                        _emailController.text,
                        _passwordController.text,
                      );
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
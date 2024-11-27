import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:saleclub/screens/bottom_navigation.dart';
import 'package:saleclub/screens/home_screen.dart';
import 'package:saleclub/view_models/login_view_model.dart';
import '../widgets/login_logo.dart';
import '../widgets/login_title.dart';
import '../widgets/login_email_field.dart';
import '../widgets/login_password_field.dart';
import '../widgets/remember_me_row.dart';
import '../widgets/login_button.dart';
import '../widgets/or_divider.dart';
import '../widgets/aim_button.dart';
import '../widgets/signup_section.dart';
import '../widgets/help_section.dart';
import '../widgets/footer_section.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;
  bool _rememberMe = false;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _emailController.text = "Hungnk18@fot.com.vn";
    _passwordController.text = "A@123123";
  }

  void _login() {
    final viewModel = Provider.of<LoginViewModel>(context, listen: false);

    if (viewModel.validateCredentials(
        _emailController.text, _passwordController.text)) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<LoginViewModel>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(48.0, 20.0, 48.0, 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 48),
                LoginLogo(),
                SizedBox(height: 40),
                LoginTitle(),
                SizedBox(height: 15),
                LoginEmailField(controller: _emailController),
                SizedBox(height: 8),
                LoginPasswordField(
                  controller: _passwordController,
                  isPasswordVisible: _isPasswordVisible,
                  onVisibilityChanged: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
                if (viewModel.errorMessage != null) ...[
                  SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      viewModel.errorMessage!,
                      style: TextStyle(color: Colors.red, fontSize: 12),
                    ),
                  ),
                ],
                SizedBox(height: 16),
                RememberMeRow(
                  value: _rememberMe,
                  onChanged: (value) {
                    setState(() {
                      _rememberMe = value!;
                    });
                  },
                ),
                SizedBox(height: 16),
                LoginButton(onPressed: _login),
                SizedBox(height: 16),
                OrDivider(),
                SizedBox(height: 16),
                AIMButton(),
                SizedBox(height: 16),
                SignupSection(),
                SizedBox(height: 50),
                HelpSection(),
                SizedBox(height: 5),
                FooterSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:stripesafepay/views/auth/register.dart';
import 'package:stripesafepay/views/auth/login.dart';

class AuthUser extends StatefulWidget {
  const AuthUser({Key? key}) : super(key: key);

  @override
  State<AuthUser> createState() => _AuthUserState();
}

class _AuthUserState extends State<AuthUser> {
  bool showLogin = true;

  void toggleScreens() {
    setState(() => {showLogin = !showLogin});
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return Login(showLogin: toggleScreens);
    } else {
      return Register(showLogin: toggleScreens);
    }
  }
}

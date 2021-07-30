import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signinwth/provider/login_provider.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: ElevatedButton(
        child: Text('login'),
        onPressed: () {
          final provider = Provider.of<SigninProvider>(context, listen: false);
          provider.googleLogin();
          print('clicked');
        },
      ),
    );
  }
}

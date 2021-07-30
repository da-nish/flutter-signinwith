import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:signinwth/screen/home.dart';
import 'package:signinwth/screen/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:signinwth/provider/login_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SigninProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}

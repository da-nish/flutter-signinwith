import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/login_provider.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
        ),
        body: Container(
            child: Column(
          children: [
            Text(user.displayName!),
            Text(user.email!),
            // Text(user.phoneNumber!),
            // Text(user.photoURL!),
            ElevatedButton(
              child: Text('logout'),
              onPressed: () {
                final p = Provider.of<SigninProvider>(context, listen: false);
                p.googleLogout();
              },
            ),
          ],
        )));
  }
}

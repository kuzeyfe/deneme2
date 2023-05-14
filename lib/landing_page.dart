import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../login_page.dart';
import 'home_page.dart';

class LandingPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
  return StreamBuilder<User?>(
    stream: _auth.authStateChanges(),
    builder: (_, AsyncSnapshot<User?> snapshot) {
      if(snapshot.connectionState == ConnectionState.active) {
          User? user = snapshot.data;
          if(user == null){
            return LoginPage();
          } else{
            return HomePage();
          }
        } else{
          return CircularProgressIndicator();
        }
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'login_page.dart';
import 'register_page.dart';

class LandingPage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FirebaseUser>(
      stream: _auth.onAuthStateChanged,
      builder: (BuildContext context, snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          FirebaseUser user = snapshot.data;
          if (user == null) {
            return LoginPage();
          } else {
            return HomePage();
          }
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: <Widget>[
          FlatButton(
            onPressed: () {
              _auth.signOut();
            },
            child: Text(
              'Logout',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Welcome to the home page!',
          style: TextStyle(
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}

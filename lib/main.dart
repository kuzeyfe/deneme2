import 'package:deneme3/login_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'login_page.dart';
import 'register_page.dart';
import 'landing_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => new LandingPage(),
        '/registerpage': (BuildContext context) => new RegisterPage(),
        '/loginpage': (BuildContext context) => new LoginPage(),
      },
    );
  }
}

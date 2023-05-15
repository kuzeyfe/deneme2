import 'package:flutter/material.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  String username = '';
  String email = '';
  String password = '';

  void handleSignup() {
    // Burada signup işlevselliğini ekleyebilirsiniz
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Kullanıcı Adı'),
        TextField(onChanged: (newValue) => setState(() => username = newValue)),

        Text('E-posta'),
        TextField(onChanged: (newValue) => setState(() => email = newValue)),

        Text('Şifre'),
        TextField(onChanged: (newValue) => setState(() => password = newValue), obscureText: true),

        ElevatedButton(child: Text('Kaydol'), onPressed: handleSignup)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../widgets/forms.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email, _password;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _submit() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      try {
        FirebaseUser user = await _auth.createUserWithEmailAndPassword(
          email: _email,
          password: _password,
        );
      } catch (e) {
        print(e.message);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (input) =>
                    !input.contains('@') ? 'Not a valid email' : null,
                onSaved: (input) => _email = input,
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Password'),
                validator: (input) =>
                    input.length < 6 ? 'Must be at least 6 characters' : null,
                onSaved: (input) => _password = input,
                obscureText: true,
              ),
              RaisedButton(
                onPressed: _submit,
                child: Text('Register'),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => LoginPage()),
                  );
                },
                child: Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}

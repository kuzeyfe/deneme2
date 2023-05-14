import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  final String labelText;
  final Function onSaved;

  EmailInput({this.labelText, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: labelText == null ? 'Email' : labelText),
      validator: (input) => !input.contains('@') ? 'Not a valid email' : null,
      onSaved: onSaved,
    );
  }
}

class PasswordInput extends StatelessWidget {
  final String labelText;
  final Function onSaved;
  final bool obscureText;

  PasswordInput({this.labelText, this.onSaved, this.obscureText = true});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: labelText == null ? 'Password' : labelText),
      validator: (input) =>
          input.length < 6 ? 'Must be at least 6 characters' : null,
      onSaved: onSaved,
      obscureText: obscureText,
    );
  }
}

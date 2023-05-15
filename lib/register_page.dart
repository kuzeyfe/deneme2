import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıt Ol'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: 'Adınızı girin',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Soyadınızı girin',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'E-posta adresinizi girin',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Şifrenizi girin',
              ),
            ),
            RaisedButton(
              child: Text('Kayıt Ol'),
              onPressed: () {
                // Kayıt olma işlemleri
              },
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Yap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
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
              child: Text('Giriş Yap'),
              onPressed: () {
                // Giriş yapma işlemleri
              },
            ),
          ],
        ),
      ),
    );
  }
}
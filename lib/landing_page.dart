import 'package:flutter/material.dart';
import 'package:my_app/login_page.dart';
import 'package:my_app/register_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Giriş Yap'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
            RaisedButton(
              child: Text('Kayıt Ol'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
            ),
            RaisedButton(
              child: Text('Ürünleri Görüntüle'),
              onPressed: () {
                // Ürünleri görüntüleme sayfasına geçiş yap
              },
            ),
          ],
        ),
      ),
    );
  }
}
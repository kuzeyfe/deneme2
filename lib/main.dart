import 'package:deneme3/login_page.dart';
import 'package:deneme3/register_page.dart'; // Ekledik
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  void goToLoginPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
  }

  void goToRegisterPage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  void goToHomePage(BuildContext context) {
    Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => RegisterPage()),
);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Ticaret Uygulaması',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Anasayfa'),
        ),
        backgroundColor: Color.fromRGBO(220, 220, 220, 1), // Arka plan rengi
        body: Align(
          alignment: Alignment.topRight, // Butonların sağ üst köşede olmasını sağlar.
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end, // Butonların sağa yaslanmasını sağlar.
              children: [

                ElevatedButton(
                  child: Text('Ana Sayfa'),
                  onPressed: () => goToHomePage(context),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 91, 129, 75),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  child: Text('Giriş'),
                  onPressed: () => goToLoginPage(context),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 0, 0, 0), // Önerilen renklerden biri olan açık yeşili kullanabilirsiniz.
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  child: Text('Kayıt'),
                  onPressed: () => goToRegisterPage(context), // Değiştirdik
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 254, 2, 2),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

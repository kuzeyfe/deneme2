import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ürünler'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          ProductCard(),
          Product
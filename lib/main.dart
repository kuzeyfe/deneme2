import 'package:flutter/material.dart';

void main() => runApp(MyApp());

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LandingPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _categories = ['Electronics', 'Clothes', 'Books'];
  String _selectedCategory = 'Electronics';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('E-Commerce App'),
      ),
      body: Column(
        children: [
          DropdownButton(
            value: _selectedCategory,
            items: _categories.map((String category) {
              return DropdownMenuItem<String>(
                value: category,
                child: Text(category),
              );
            }).toList(),
            onChanged: (String? value) {
              setState(() {
               _selectedCategory = value ?? 'default_value';
              });
            },
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(16.0),
              children: <Widget>[
                ProductCard(imagePath: 'assets/images/product1.jpg', name: 'Product 1', price: 20.0),
                ProductCard(imagePath: 'assets/images/product2.jpg', name: 'Product 2', price: 35.0),
                ProductCard(imagePath: 'assets/images/product3.jpg', name: 'Product 3', price: 48.0),
                ProductCard(imagePath: 'assets/images/product4.jpg', name: 'Product 4', price: 17.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final double price;

  ProductCard({required this.imagePath, required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(imagePath),
          Text(name),
          Text(price.toString() + '\$'),
          ElevatedButton(
            onPressed: () {},
            child: Text('Add to Cart'),
          ),
        ],
      ),
    );
  }
}

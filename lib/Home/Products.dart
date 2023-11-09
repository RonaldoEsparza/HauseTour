import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Product {
  final String id;
  final String name;
  final String description;
  final String imageUrl;

  Product(this.id, this.name, this.description, this.imageUrl);
}

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product("1", "APARTAMENTO 1", "Descripción del producto 1", "assets/img/casa.jpg"),
    Product("2", "APARTAMENTO 2", "Descripción del producto 2", "assets/img/casa.jpg"),
    Product("3", "APARTAMENTO 3", "Descripción del producto 3", "assets/img/casa.jpg"),
    Product("4", "APARTAMENTO 4", "Descripción del producto 4", "assets/img/casa.jpg"),
    Product("5", "APARTAMENTO 5", "Descripción del producto 5", "assets/img/casa.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lista de Productos'),
        ),
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductItem(product: products[index]);
          },
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  ProductItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          Image.network(product.imageUrl, width: 100, height: 100),
          SizedBox(height: 5),
          Text(product.name),
          SizedBox(height: 5),
          Text(product.description),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Implementa la acción para "Ver Más"
            },
            child: Text("Ver Más"),
          ),
        ],
      ),
    );
  }
}

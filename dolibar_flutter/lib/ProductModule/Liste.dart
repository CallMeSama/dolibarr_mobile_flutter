import 'dart:math';
import 'package:animated_login/ProductModule/ProductForm.dart';
import 'package:flutter/material.dart';
import '../models/Product.dart';
import '../service/Product_service.dart';

class CartIcon extends StatelessWidget {
  final double size;
  final Color color;

  const CartIcon({Key? key, this.size = 24.0, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.shopping_cart,
      size: size,
      color: color,
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Liste des produits'),
        backgroundColor: Color.fromARGB(234, 116, 6, 8),
      ),
      body: const Center(
        child: ProductsList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddProductForm()),
          );
        },
        backgroundColor: Color.fromARGB(234, 116, 6, 8),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductsListState();
  }
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Product>>(
      future: allProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          List<Product>? products = snapshot.data;
          return ProductListWidget(productList: products);
        } else {
          return const Center(
            child: Text('Erreur lors de la récupération des utilisateurs.'),
          );
        }
      },
    );
  }
}

class ProductListWidget extends StatelessWidget {
  final List<Product>? productList;

  const ProductListWidget({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: productList?.length,
        itemBuilder: (BuildContext context, int index) {
          final product = productList![index];
          return ListTile(
            leading: CartIcon(size: 34.0, color: Color.fromARGB(234, 116, 6, 8)),
            title: Text(
              "${product.label}",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 16,
                color: Color.fromARGB(234, 116, 6, 8),
              ),
            ),
            subtitle: Text("${product.dateModification}"),
            trailing: IconButton(
              icon: Icon(Icons.star, size: 24.0, color: Colors.yellow),
              onPressed: () {
                // Action à effectuer lors du clic sur le bouton
              },
            ),
            onTap: () {
              
            },
          );
        },
      ),
    ));
  }
}
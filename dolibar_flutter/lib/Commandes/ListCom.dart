import 'dart:math';
import 'package:flutter/material.dart';
import '../models/Commande.dart';
import '../service/Commande_service.dart';
import 'NewCom.dart';

class DocumentIcon extends StatelessWidget {
  final double size;
  final Color color;

  const DocumentIcon({Key? key, this.size = 24.0, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.description,
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
        backgroundColor: Color(0xff250432),
      ),
      body: const Center(
        child: OrdersList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NewCom()),
          );
        },
        backgroundColor: Color(0xff250432),
        child: const Icon(Icons.add),
      ),
    );
  }
}

class OrdersList extends StatefulWidget {
  const OrdersList({super.key});

  @override
  State<StatefulWidget> createState() {
    return _OrdersListState();
  }
}

class _OrdersListState extends State<OrdersList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Order>>(
      future: allOrders(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasData) {
          List<Order>? orders = snapshot.data;
          return OrderListWidget(orderList: orders);
        } else {
          return const Center(
            child: Text('Erreur lors de la récupération des commandes.'),
          );
        }
      },
    );
  }
}

class OrderListWidget extends StatelessWidget {
  final List<Order>? orderList;

  const OrderListWidget({super.key, required this.orderList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: orderList?.length,
        itemBuilder: (BuildContext context, int index) {
          final order = orderList![index];
          return ListTile(
            leading: DocumentIcon(size: 34.0, color: Color(0xff250432)),
            title: Text(
              "${order.ref}",
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff250432),
              ),
            ),
            subtitle: Text("${order.name}"),
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
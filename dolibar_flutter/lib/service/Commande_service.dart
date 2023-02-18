import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/Commande.dart';

Future<List<Order>> allOrders() async {
    var token = await SessionManager().get('token');
    final response = await http.Client().get(
      Uri.parse('https://dolimobil.with6.dolicloud.com/api/index.php/orders'),
      
     headers: ({
      'DOLAPIKEY': token.toString(),
     })
    );

   if (response.statusCode == 200){
    List orders = json.decode(response.body) as List;
    return orders.map((order) => Order.fromJson(order)).toList();
   }else{
    throw Exception("Ne peut pas récupérer les commandes");
   }
}

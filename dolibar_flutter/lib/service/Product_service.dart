import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/Product.dart';

Future<List<Product>> allProducts() async {
    var token = await SessionManager().get('token');
    final response = await http.Client().get(
      Uri.parse('https://dolimobil.with6.dolicloud.com/api/index.php/products'),
      
     headers: ({
      'DOLAPIKEY': token.toString(),
     })
    );

   if (response.statusCode == 200){
    List products = json.decode(response.body) as List;
    return products.map((product) => Product.fromJson(product)).toList();
   }else{
    throw Exception("Ne peut pas récupérer les produits");
   }
}

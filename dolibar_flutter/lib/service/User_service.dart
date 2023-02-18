import 'dart:convert';

import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'package:http/http.dart' as http;

import '../models/User.dart';


Future<List<User>> allUsers() async {
    var token = await SessionManager().get('token');
    final response = await http.Client().get(
      Uri.parse('https://dolimobil.with6.dolicloud.com/api/index.php/users'),
      
     headers: ({
      'DOLAPIKEY': token.toString(),
     })
    );

   if (response.statusCode == 200){
    List users = json.decode(response.body) as List;
    return users.map((user) => User.fromJson(user)).toList();
   }else{
    throw Exception("Ne peut pas récupérer les utilisateurs");
   }
}



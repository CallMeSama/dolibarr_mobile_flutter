import 'package:flutter/material.dart';
/*import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';*/

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Bienvenue_background.png'), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left: 113, top: 350),
              child: Text(
                'Se connecter', 
              style: TextStyle( color: Colors.black, fontSize: 30),
              ),
            ),
            SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.5, 
              right: 35, 
              left: 40),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(227, 245, 245, 245),
                      filled: true,
                      hintText: 'Identifiant',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                 SizedBox(
                  height: 30,
                 ),
                 TextField(
                  obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(227, 245, 245, 245),
                      filled: true,
                      hintText: 'Mot de passe',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                 SizedBox(
                  height: 30,
                 ),
                 TextField(
                    decoration: InputDecoration(
                      fillColor: Color.fromARGB(227, 245, 245, 245),
                      filled: true,
                      hintText: 'https://',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                  ),
                ],
              ),
            )
            )
          ],
        ),
      ),
    );
  }
}
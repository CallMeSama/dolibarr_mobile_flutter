<<<<<<< HEAD
import 'package:animated_login/presentation/login_screen.dart';
=======
import 'package:dolibar_flutter/login.dart';
import 'package:dolibar_flutter/Users.dart';
>>>>>>> mariama
import 'package:flutter/material.dart';
import 'package:animated_login/presentation/widgets/home_page.dart';
import 'presentation/widgets/messages_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          textSelectionTheme: TextSelectionThemeData(cursorColor: Colors.black),
          textTheme: TextTheme(
            subtitle1: TextStyle(color: Colors.black), //<-- SEE HERE
          ),
          inputDecorationTheme: InputDecorationTheme(
            hintStyle: TextStyle(color: Colors.black.withOpacity(0.7)),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            border: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
        home:  HomePage());
=======
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Users(),
    );
>>>>>>> mariama
  }
}

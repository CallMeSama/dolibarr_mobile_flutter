import 'package:animated_login/presentation/widgets/ResetPassword.dart';
import 'package:animated_login/presentation/widgets/home_page.dart';
import 'package:animated_login/presentation/widgets/username_field.dart';
import 'package:animated_login/presentation/widgets/get_started_button.dart';
import 'package:animated_login/presentation/widgets/messages_screen.dart';
import 'package:animated_login/presentation/widgets/password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_session_manager/flutter_session_manager.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

import '../screens/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  late TextEditingController linkController;

  KeyboardVisibilityController keyboardVisibilityController =
      KeyboardVisibilityController();
  bool _isKeyboardVisible = false;

  //Authentification des users de dolibarr
  Future<String> connectToDolibarr(String username, String password) async {
    final response = await http.post(
      Uri.parse('https://dolimobil.with6.dolicloud.com/api/index.php/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'login': username,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return data['success']['token'];
    } else {
      throw Exception('Failed to connect to Dolibarr server');
    }
  }

  double _elementsOpacity = 1;
  bool loadingBallAppear = false;
  double loadingBallSize = 1;
  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    linkController = TextEditingController();
    keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() {
        _isKeyboardVisible = visible;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
            primary: true,
            child: Form(
              key: _formKey,
              child: Container(
                child: SafeArea(
                  bottom: false,
                  child: loadingBallAppear
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30.0),
                          child: MessagesScreen())
                      : Padding(
                          padding: EdgeInsets.symmetric(horizontal: 50.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 90),
                              TweenAnimationBuilder<double>(
                                duration: Duration(milliseconds: 300),
                                tween: Tween(begin: 1, end: _elementsOpacity),
                                builder: (_, value, __) => Opacity(
                                  opacity: value,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.flutter_dash,
                                        size: _isKeyboardVisible ? 40 : 60,
                                        color: Color.fromARGB(234, 4, 34, 75),
                                      ),
                                      SizedBox(
                                          height: _isKeyboardVisible ? 5 : 25),
                                      Text(
                                        "Welcome, ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize:
                                                _isKeyboardVisible ? 25 : 35,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "to DoliMobile",
                                            style: TextStyle(
                                              color:
                                                  Colors.black.withOpacity(0.7),
                                              fontSize:
                                                  _isKeyboardVisible ? 25 : 35,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Icon(Icons.favorite,
                                              color: Color.fromARGB(
                                                  234, 4, 34, 75),
                                              size: _isKeyboardVisible
                                                  ? 32.0
                                                  : 48.0),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 70),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Column(
                                  children: [
                                    UsernameField(
                                        fadeUsername: _elementsOpacity == 0,
                                        usernameController: usernameController),
                                    SizedBox(height: 40),
                                    PasswordField(
                                        fadePassword: _elementsOpacity == 0,
                                        passwordController: passwordController),
                                    SizedBox(height: 10),
                                    InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  ResetPassword(
                                                    title: 'awa',
                                                  )),
                                        );
                                      },
                                      child: Container(
                                        margin: EdgeInsets.only(left: 150),
                                        child: Text(
                                          'Mot de passe oublié ?',
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 28, 85, 136),
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationThickness: 1),
                                          textAlign: TextAlign.right,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    GetStartedButton(
                                      elementsOpacity: _elementsOpacity,
                                      onTap: () async {
                                        if (_formKey.currentState!.validate()) {
                                          setState(() {
                                            _elementsOpacity = 0;
                                          });
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const MainScreen()),
                                          );
                                          ;
                                          try {
                                            String token =
                                                await connectToDolibarr(
                                                    usernameController.text,
                                                    passwordController.text);
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()),
                                            );
                                          } catch (e) {
                                            // handle connection error
                                            print(e);
                                          }
                                        }
                                      },
                                      onAnimatinoEnd: () async {
                                        await Future.delayed(
                                            Duration(milliseconds: 500));
                                        setState(() {
                                          loadingBallAppear = true;
                                        });
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                ),
              ),
            )));
  }
}

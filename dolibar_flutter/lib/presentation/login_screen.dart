import 'package:animated_login/presentation/widgets/List_Users.dart';
import '../presentation/widgets/ResetPassword.dart';
import '../presentation/widgets/username_field.dart';
import '../presentation/widgets/get_started_button.dart';
import '../presentation/widgets/messages_screen.dart';
import '../presentation/widgets/password_field.dart';
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

  KeyboardVisibilityController keyboardVisibilityController = KeyboardVisibilityController();
  bool _isKeyboardVisible = false;
  
   //Authentification des users de dolibarr
  Future<Object> connectToDolibarr(String username, String password) async {
    var session = SessionManager();
    http.Response response = await http.Client().post(
      Uri.parse('https://dolimobil.with6.dolicloud.com/api/index.php/login'),
      
      body: ({
        'login': username,
        'password': password,
      })
    );

    final donnee = json.decode(response.body);

    if (response.statusCode == 200) {
      session.set("islogin", true);
      session.set("name", username);
      session.set("token", donnee['success']['token']);
      //pour la déconnexion
      return true;
    }
    if (response.statusCode == 403) {
      return false;
    }
    await session.set("token", "");
    return false;
}

//Gestion déconnexion

Future<void>logout() async {
  await SessionManager().remove('token');
  // Autres tâches de nettoyage si nécessaire
}


  double _elementsOpacity = 1;
  bool loadingBallAppear = false;
  double loadingBallSize = 1;
  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
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
          child:Container(
            child: SafeArea(
            bottom: false,
            child: loadingBallAppear
                ? Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30.0),
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.flutter_dash, 
                                    size: _isKeyboardVisible
                                    ? 40
                                    : 60,
                                    color: Color.fromARGB(234, 4, 34, 75),
                                  ),
                                  SizedBox(height: _isKeyboardVisible ? 5 : 25),
                                  Text(
                                    "Welcome, ",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: _isKeyboardVisible ? 25 : 35, fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "to DoliMobile",
                                        style: TextStyle(
                                          color: Colors.black.withOpacity(0.7),
                                          fontSize: _isKeyboardVisible ? 25 : 35,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(Icons.favorite, color: Color.fromARGB(234, 4, 34, 75), size: _isKeyboardVisible ? 32.0 : 48.0),
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
                                      MaterialPageRoute(builder: (context) => ResetPassword(title: 'awa',)),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(left: 100),
                                    child: Text('Mot de passe oublié ?', style: TextStyle(color: Color.fromARGB(255, 28, 85, 136), decoration: TextDecoration.underline, decorationThickness: 1),textAlign: TextAlign.right,),
                                  ),
                                ),
                                SizedBox(height: 20),
                                GetStartedButton(
                                  elementsOpacity: _elementsOpacity,
                                  onTap: () async {
                                    if(_formKey.currentState!.validate()){
                                      var auth = await connectToDolibarr(
                                        usernameController.text, 
                                        passwordController.text,
                                        
                                      );
                                      if(auth.toString()== 'false') {
                                        usernameController.clear();
                                        passwordController.clear();
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => LoginScreen()),
                                        );
                                      }
                                      else{
                                        if(auth.toString()== 'true'){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => MainScreen()),
                                          );
                                        }
                                        
                                      } 
                                      /*setState(() {
                                        _elementsOpacity = 0;
                                      });*/
                                     
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
        )
      )
    );
  }

}

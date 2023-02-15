import 'package:animated_login/presentation/widgets/username_field.dart';
import 'package:animated_login/presentation/widgets/get_started_button.dart';
import 'package:animated_login/presentation/widgets/messages_screen.dart';
import 'package:animated_login/presentation/widgets/password_field.dart';
import 'package:animated_login/presentation/widgets/link_field.dart';
import 'package:flutter/material.dart';


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
  

  double _elementsOpacity = 1;
  bool loadingBallAppear = false;
  double loadingBallSize = 1;
  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    linkController = TextEditingController();
    super.initState();
  }

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Form(
        key: _formKey,
        child:Container(
          decoration: BoxDecoration(
            
          ),
          child: SafeArea(
          bottom: false,
          child: loadingBallAppear
              ? Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30.0),
                  child: MessagesScreen())
              : Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 70),
                        TweenAnimationBuilder<double>(
                          duration: Duration(milliseconds: 300),
                          tween: Tween(begin: 1, end: _elementsOpacity),
                          builder: (_, value, __) => Opacity(
                            opacity: value,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.flutter_dash, 
                                    size: 60, color: Color(0xff21579C)),
                                SizedBox(height: 25),
                                Text(
                                  "Welcome",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 35),
                                ),
                                Text(
                                  "Sign in to continue",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 35),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 50),
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
                              SizedBox(height: 60),
                              LinkField(
                                  fadeLink: _elementsOpacity == 0,
                                  linkController: linkController),
                              SizedBox(height: 60),
                              GetStartedButton(
                                elementsOpacity: _elementsOpacity,
                                onTap: () {
                                  if(_formKey.currentState!.validate()){
                                    /*Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const MessagesScreen()),
                                    );*/

                                  }else {
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Tous les champs sont obligatoires'),));
                                  }

                                  setState(() {
                                    _elementsOpacity = 0;
                                  });
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
        ),
      )
    );
  }
}

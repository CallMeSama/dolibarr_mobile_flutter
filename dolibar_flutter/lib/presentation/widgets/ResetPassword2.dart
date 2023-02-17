import 'package:animated_login/presentation/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_login/presentation/widgets/PasswordField2.dart';
import 'package:animated_login/presentation/widgets/Suivant.dart';
import 'package:animated_login/presentation/widgets/PasswordField.dart';
import 'package:animated_login/presentation/widgets/ResetPassword.dart';

class ResetPassword2 extends StatefulWidget {
  const ResetPassword2({super.key, required String title});

  @override
  State<ResetPassword2> createState() => _ResetPassword2State();
}

class _ResetPassword2State extends State<ResetPassword2> {
  late TextEditingController passwordController;
  late TextEditingController password2Controller;
  double _elementsOpacity = 1;
  bool loadingBallAppear = false;
  double loadingBallSize = 1;

  @override
  void initState() {
    passwordController = TextEditingController();
    password2Controller = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ResetPassword(
                    title: 'retour',
                  ),
                ));
          },
        ),
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 28, 85, 136), // définir la couleur de l'icône de l'AppBar
        ),
      ),
      body: SafeArea(
          bottom: false,
          child: loadingBallAppear
              ? Padding(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30.0))
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
                                Icon(Icons.login,
                                    size: 70, color: Color.fromARGB(255, 28, 85, 136)),
                                SizedBox(height: 25),
                                Text(
                                  "Réinitialiser le mot de passe.",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 30),
                                ),
                                Text(
                                  "Entrez le nouveau mot de passe.",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.7),
                                      fontSize: 25),
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
                              PasswordField(
                                fadePassword: _elementsOpacity == 0,
                                passwordController: passwordController,
                                onPressed: () {},
                              ),
                              PasswordField2(
                                password2Controller: password2Controller,
                                fadePassword: _elementsOpacity == 0,
                                onPressed: () {},
                              ),
                              SizedBox(height: 60),
                              SuivantButton(
                                elementsOpacity: _elementsOpacity,
                                onTap: () {
                                  if (passwordController.text ==
                                        password2Controller.text) {
                                      setState(() {
                                        _elementsOpacity = 0;
                                        loadingBallAppear = true;
                                         Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (_, __, ___) =>
                                                const LoginScreen()));
                                      });
                                      // Ajoutez ici le code pour la réinitialisation du mot de passe
                                    } else {
                                      // Si les deux mots de passe ne sont pas identiques, affichez un message d'erreur
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(
                                              'Les deux mots de passe saisis ne sont pas identiques.'),
                                        ),
                                      );
                                    }
                                  
                              
                                },
                                onAnimatinoEnd: () async {
                                  await Future.delayed(
                                      Duration(milliseconds: 500));
                                  setState(() {
                                    loadingBallAppear = true;
                                  });
                                },
                                onPressed: () {},
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
    );
  }
}

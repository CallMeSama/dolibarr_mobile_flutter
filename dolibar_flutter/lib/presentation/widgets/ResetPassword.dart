import '/presentation/login_screen.dart';
import 'package:flutter/material.dart';
import '/presentation/widgets/EmailField.dart';
import '/presentation/widgets/Suivant.dart';
import '/presentation/widgets/ResetPassword2.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key, required String title});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  late TextEditingController emailController;
  double _elementsOpacity = 1;
  bool loadingBallAppear = false;
  double loadingBallSize = 1;
  // ignore: unused_field
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    emailController = TextEditingController();

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
                  builder: (context) => const LoginScreen()
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
                                  size: 100, color: Color.fromARGB(255, 28, 85, 136)),
                              SizedBox(height: 25),
                              Text(
                                "Mot de passe oublié.",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 25),
                              ),
                              Text(
                                "Veuillez entrer votre email.",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.7),
                                    fontSize: 20),
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
                            EmailField(
                              fadeEmail: _elementsOpacity == 0,
                              emailController: emailController,
                              onPressed: () {},
                            ),
                            SizedBox(height: 40),
                            SuivantButton(
                              elementsOpacity: _elementsOpacity,
                              onTap: () async{
                               
                                  setState(() {
                                    _elementsOpacity = 0;
                                    Navigator.push(
                                        context,
                                        PageRouteBuilder(
                                            pageBuilder: (_, __, ___) =>
                                                const ResetPassword2(
                                                  title: 'go',
                                                )));
                                  });
                                
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
              ),
      ),
    );
  }
}

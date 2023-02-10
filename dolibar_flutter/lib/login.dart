import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({super.key});

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController apilinkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/Bienvenue_background.png'), fit: BoxFit.cover)
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: _page(),
          ),
    );
  }

  Widget _page(){
    return Padding(
      padding: const EdgeInsets.all(32.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          const SizedBox(height:78),
          _textDolibarr(),
          const SizedBox(height:30),
          _inputField("Username",usernameController),
          const SizedBox(height:20),
          _inputField("Password",passwordController, isPassword: true),
          const SizedBox(height:20),
          _inputField("https://",apilinkController),
          const SizedBox(height:20),
          _loginBtn(),
          const SizedBox(height:20),
          _extraText(),
          ],
        ),
      ),
    );
  }

  Widget _textDolibarr(){
    return Container(
      child: Text(
        'DOLIBARR', 
        style: TextStyle( color: Colors.lightBlue, fontSize: 30, fontWeight:FontWeight.bold),
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller, {isPassword = false}){
    
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: const BorderSide(color: Colors.white));

    return TextField(
      style: const TextStyle(color: Colors.blue),
      controller:controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.blue),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );

  }

  Widget _loginBtn(){
    return ElevatedButton(
      onPressed: (){
        debugPrint("Username: "+usernameController.text);
        debugPrint("Password: "+passwordController.text);
        debugPrint("https://: "+apilinkController.text);
      }, 
      child: const SizedBox(width:double.infinity,
      child: Text("Sign in",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 20),
      )),
      style: ElevatedButton.styleFrom(
        shape: const StadiumBorder(),
        primary: Colors.white,
        onPrimary: Colors.blue,
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
    );
  }

  Widget _extraText(){
    return const Text(
      "Can't acces to your account?",textAlign: TextAlign.center,
      style: TextStyle(fontSize: 16, color: Colors.white),
    );
  }
}












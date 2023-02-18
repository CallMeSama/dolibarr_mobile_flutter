import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController passwordController;
  final bool fadePassword;

  const PasswordField(
      {super.key,
      required this.passwordController,
      required this.fadePassword});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  // ignore: unused_field
  String? _password = null;
  double bottomAnimationValue = 0;
  double opacityAnimationValue = 0;
  late TextEditingController passwordController;
  bool obscure = true;
  FocusNode node = FocusNode();
  @override
  void initState() {
    passwordController = widget.passwordController;
    node.addListener(() {
      if (!node.hasFocus) {
        setState(() {
          bottomAnimationValue = 0;
          opacityAnimationValue = 0;
        });
      } else {
        setState(() {
          bottomAnimationValue = 1;
          opacityAnimationValue = 1;
        });
        if (passwordController.text.isEmpty) {
          setState(() {
            bottomAnimationValue = 1;
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TweenAnimationBuilder<double>(
          duration: Duration(milliseconds: 300),
          tween: Tween(begin: 0, end: widget.fadePassword ? 0 : 1),
          builder: ((_, value, __) => Opacity(
                opacity: value,
                child: TextFormField(
                  controller: passwordController,
                  focusNode: node,
                  decoration: InputDecoration(hintText: "Password"),
                  obscureText: obscure,
                  validator: (String? value){
                    if(value!.isEmpty) {
                      //return '*Champ obligatoire';
                    }else if (value.length < 3) {
                      return 'Le mot de passe doit comporter au moins 3 caractères';
                    }
                    return null;
                  },
                  onChanged: (value) {
                    if (value.isEmpty) {
                      setState(() {
                        bottomAnimationValue = 0;
                        opacityAnimationValue = 0;
                      });
                    } else {
                      if (bottomAnimationValue == 0) {
                        setState(() {
                          bottomAnimationValue = 1;
                          opacityAnimationValue = 1;
                        });
                      }
                    }
                  },
                  onSaved: (value) {
                    _password = value;
                  },
                ),
              )),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
              width: widget.fadePassword ? 0 : 300,
              child: TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: bottomAnimationValue),
                curve: Curves.easeIn,
                duration: Duration(milliseconds: 500),
                builder: ((context, value, child) => LinearProgressIndicator(
                      value: value,
                      backgroundColor: Colors.grey.withOpacity(0.5),
                      color: Colors.black,
                    )),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: TweenAnimationBuilder<double>(
            tween: Tween(
                begin: 0,
                end: opacityAnimationValue == 0
                    ? 0
                    : widget.fadePassword
                        ? 0
                        : 1),
            duration: Duration(milliseconds: 700),
            builder: ((context, value, child) => Opacity(
                  opacity: value,
                  child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12.0)
                          .copyWith(bottom: 0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            obscure = !obscure;
                          });
                        },
                        child: Icon(
                          obscure ? Icons.visibility : Icons.visibility_off,
                          size: 27,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )),
          ),
        )
      ],
    );
  }
}

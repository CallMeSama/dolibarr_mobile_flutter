import 'package:flutter/material.dart';

class PasswordField2 extends StatefulWidget {
  final TextEditingController password2Controller;
  final bool fadePassword;

  const PasswordField2(
      {super.key,
      required this.password2Controller,
      required this.fadePassword,
      required Null Function() onPressed});

  @override
  State<PasswordField2> createState() => _PasswordField2State();
}

class _PasswordField2State extends State<PasswordField2> {
  double bottomAnimationValue = 0;
  double opacityAnimationValue = 0;
  late TextEditingController password2Controller;
  bool obscure = true;
  FocusNode node = FocusNode();
  @override
  void initState() {
    password2Controller = widget.password2Controller;
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
        if (password2Controller.text.isEmpty) {
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
                  controller: password2Controller,
                  focusNode: node,
                  decoration: InputDecoration(
                      hintText: "Confirmez nouveau mot de passe"),
                  obscureText: obscure,
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

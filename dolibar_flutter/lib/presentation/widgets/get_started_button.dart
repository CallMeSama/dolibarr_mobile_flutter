import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';


class GetStartedButton extends StatefulWidget {
  final Function onTap;
  final Function onAnimatinoEnd;
  final double elementsOpacity;
  const GetStartedButton(
      {super.key,
      required this.onTap,
      required this.onAnimatinoEnd,
      required this.elementsOpacity});

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> {
  KeyboardVisibilityController keyboardVisibilityController = KeyboardVisibilityController();
  bool _isKeyboardVisible = false;
  @override
  void initState() {
    keyboardVisibilityController.onChange.listen((bool visible) {
      setState(() {
        _isKeyboardVisible = visible;
      });
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: Duration(milliseconds: 300),
      tween: Tween(begin: 1, end: widget.elementsOpacity),
      onEnd: () async {
        widget.onAnimatinoEnd();
      },
      builder: (_, value, __) => GestureDetector(
        onTap: () {
          widget.onTap();
        },
        child: Opacity(
          opacity: value,
          child: SingleChildScrollView(
            child: Container(
              width: _isKeyboardVisible ? 160 : 170,
              height: _isKeyboardVisible ? 40 : 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 224, 227, 231),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: _isKeyboardVisible ? 15 : 16),
                  ),
                  SizedBox(width: 15),
                  Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.black,
                    size: _isKeyboardVisible ? 15 : 18,
                  )
                ],
              ),
            ),
        ),
        ),
      ),
    );
  }
}


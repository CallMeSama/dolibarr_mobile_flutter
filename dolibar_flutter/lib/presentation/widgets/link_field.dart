import 'package:animated_login/styles/colors.dart';
import 'package:flutter/material.dart';

class LinkField extends StatefulWidget {
  final bool fadeLink;
  final TextEditingController linkController;
  const LinkField(
      {super.key, required this.linkController, required this.fadeLink});

  @override
  State<LinkField> createState() => _LinkField();
}

class _LinkField extends State<LinkField>
    with SingleTickerProviderStateMixin {
  double bottomAnimationValue = 0;
  double opacityAnimationValue = 0;
  EdgeInsets paddingAnimationValue = EdgeInsets.only(top: 22);

  late TextEditingController linkController;
  late AnimationController _animationController;
  late Animation<Color?> _animation;

  FocusNode node = FocusNode();
  @override
  void initState() {
    linkController = widget.linkController;
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    final tween = ColorTween(begin: Colors.grey.withOpacity(0), end: blueColor);

    _animation = tween.animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();

    node.addListener(() {
      if (node.hasFocus) {
        setState(() {
          bottomAnimationValue = 1;
        });
      } else {
        setState(() {
          bottomAnimationValue = 0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TweenAnimationBuilder<double>(
          duration: Duration(milliseconds: 300),
          tween: Tween(begin: 0, end: widget.fadeLink ? 0 : 1),
          builder: ((_, value, __) => Opacity(
                opacity: value,
                child: TextFormField(
                  controller: linkController,
                  focusNode: node,
                  decoration: InputDecoration(hintText: "https://"),
                  keyboardType: TextInputType.name,
                  onChanged: (value) async {
                    if (value.isNotEmpty) {
                      final RegExp urlRegex = new RegExp(
                        r"^https:\/\/.*$",
                        caseSensitive: false,
                        multiLine: false,
                      );
                      if (!urlRegex.hasMatch(value)) {
                        _animationController.reverse();
                        setState(() {
                          bottomAnimationValue = 1;
                          opacityAnimationValue = 0;
                          paddingAnimationValue = EdgeInsets.only(top: 22);
                        });
                      } else {
                        setState(() {
                          bottomAnimationValue = 0;
                          opacityAnimationValue = 1;
                          paddingAnimationValue = EdgeInsets.only(top: 0);
                        });
                          _animationController.forward();
                      }
                    } else {
                      setState(() {
                        bottomAnimationValue = 0;
                      });
                      
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
              width: widget.fadeLink ? 0 : 300,
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
          child: AnimatedPadding(
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 500),
            padding: paddingAnimationValue,
            child: TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: widget.fadeLink ? 0 : 1),
              duration: Duration(milliseconds: 700),
              builder: ((context, value, child) => Opacity(
                    opacity: value,
                    child: Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0)
                            .copyWith(bottom: 0),
                        child: Icon(Icons.check_rounded,
                            size: 27,
                            color: _animation.value // _animation.value,
                            ),
                      ),
                    ),
                  )),
            ),
          ),
        ),
      ],
    );
  }

 /* bool isValidusername(String username) {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(username);
  }*/
}

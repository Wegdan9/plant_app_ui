import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  final Widget child;
   FadeAnimation({Key? key, required this.child}) : super(key: key);

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> with SingleTickerProviderStateMixin{

  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
   _animationController = AnimationController(duration: Duration(seconds: 1), vsync: this,);
   _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
   _animationController.forward();
    super.initState();
  }
  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return FadeTransition(opacity: _animationController, child: widget,);
  }
}

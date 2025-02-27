import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _textOpacityAnimation;
  late Animation<double> _containerScaleAnimation;
  late Animation<double> _stackPositionAnimation;
  late Animation<double> _containerOpacityAnimation;
  late Animation<double> _welcomeOpacityAnimation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 5));

    _textOpacityAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.0, 0.2, curve: Curves.easeIn)));

    _containerScaleAnimation = Tween<double>(begin: 6, end: 2).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.3, 0.5, curve: Curves.easeOutBack)));

    _stackPositionAnimation = Tween<double>(begin: 0, end: -200).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.5, 0.7, curve: Curves.easeIn)));

    _containerOpacityAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.3, 0.5, curve: Curves.easeIn)));

    _welcomeOpacityAnimation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.7, 0.9, curve: Curves.easeIn)));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _stackPositionAnimation.value),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Opacity(
                        opacity: _containerOpacityAnimation.value,
                        child: Transform.scale(
                          scale: _containerScaleAnimation.value,
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: const BoxDecoration(
                                color: Colors.purple, shape: BoxShape.circle),
                          ),
                        ),
                      ),
                      Opacity(
                        opacity: _textOpacityAnimation.value,
                        child: const Text(
                          "Agafari",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 80),
                  Opacity(
                    opacity: _welcomeOpacityAnimation.value,
                    child: const Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:events/src/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
        const Duration(milliseconds: 1500),
        (() => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage()))));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FadeOut(
        delay: Duration(milliseconds: 600),
        child: ZoomIn(
          // delay: Duration(seconds: 2),
          from: 10,
          duration: Duration(seconds: 1),
          child: Image.asset(
            "assets/images/events.png",
            scale: 20,
          ),
        ),
      )),
    );
  }
}

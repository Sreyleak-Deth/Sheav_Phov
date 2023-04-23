import 'dart:async';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:seav_phov/app.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context) => App(),
    )
    )
  );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          color: Colors.white,
          child:const FlutterLogo(size: 200)
        ),
      ]
    );
  }
}

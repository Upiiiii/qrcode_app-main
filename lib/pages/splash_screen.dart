import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration (seconds: 4),
    ()=>Navigator.pushReplacementNamed(context, '/home')
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Text('Quick Response',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: 'Logam',
                fontSize: 40
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.lightBlue,
      );
  }
}
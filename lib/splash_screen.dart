import 'package:delayed_widget/delayed_widget.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pushNamed(context, '/second');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              'به فروشگاه شناگرشو خوش آمدید'.textSyleToText(Colors.black, 30),
              DelayedWidget(
                animationDuration: const Duration(seconds: 1),
                delayDuration: const Duration(seconds: 1),
                child: Image.network(
                  width: 400,
                  height: 100,
                  'https://wzmdhsigrbbmiiaudjst.supabase.co/storage/v1/object/sign/store_app_images/logo/logo.jpg?token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1cmwiOiJzdG9yZV9hcHBfaW1hZ2VzL2xvZ28vbG9nby5qcGciLCJpYXQiOjE3MTI0ODg2NzksImV4cCI6MTgwNzA5NjY3OX0.p2ikqXT6c9iFkZZlCIS76h-khbzPfgpGab9KyVJmTso&t=2024-04-07T11%3A17%3A59.923Z',
                ),
              ),
              Lottie.asset(
                'assets/animation/Animation - 1712661670881.json',
                width: 400,
                height: 400,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

extension Style on String {
  Text textSyleToText(Color color, double fontSize) {
    return Text(
      this,
      style: TextStyle(
        color: color,
        fontFamily: 'B Mitra',
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      ),
    );
  }
}

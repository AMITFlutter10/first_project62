import 'dart:async';

import 'package:first_project62/onboarding_page.dart';
import 'package:first_project62/widgets/default_text.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5),()=> Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_)=> OnBoardingPage()), (route) => false));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("assets/images/pic1.jpg"),
          const SizedBox(height: 20,),
          DefaultText( text: 'Welcome',
            color: Colors.teal,fontSize: 17,
            fontWeight: FontWeight.bold,)
        ],
      ),
    );
  }
}

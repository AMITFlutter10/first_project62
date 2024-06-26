import 'package:first_project62/shared/chach_helper.dart';
import 'package:first_project62/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'login_page.dart';
import 'onboarding_page.dart';

void main(){
  CacheHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false ,
      home: SplashPage(),
    );
  }

}
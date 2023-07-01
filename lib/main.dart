
import 'package:flutter/material.dart';

import 'screens/welcome/welcome_screen.dart';
import 'themes/app_theme.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      home: WelcomeScreen(),
    );
  }



}
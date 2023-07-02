
import 'package:flutter/material.dart';
import 'package:plant_app_ui/screens/details/details_screen.dart';
import 'package:plant_app_ui/screens/home/home_screen.dart';

import 'screens/welcome/welcome_screen.dart';
import 'themes/app_theme.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,

      routes: {
        '/':(context) => WelcomeScreen(),
        HomeScreen.HOME_SCREEN_ROUTE:(context) => HomeScreen(),
        ProductDetailsScreen.PRODUCT_DETAILS_SCREEN_ROUTE:(context) => ProductDetailsScreen(),


      },
    );
  }



}
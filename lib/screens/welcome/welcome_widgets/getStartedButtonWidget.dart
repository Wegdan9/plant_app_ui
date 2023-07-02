import 'package:flutter/material.dart';
import 'package:plant_app_ui/animation/fade_animation.dart';
import 'package:plant_app_ui/screens/home/home_screen.dart';

import '../../../themes/app_theme.dart';


class GetStartedButton extends StatelessWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(AppTheme.kIconColor.withOpacity(0.5)),
        ),
        child: Container(
          height: 48,
            width: MediaQuery.of(context).size.width * 0.8,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              //color: AppTheme.kIconColor.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
          child: Text('Get Started', style: Theme.of(context).textTheme.bodyLarge!.copyWith(
            color: Colors.white
          ),) ,
        ),
        onPressed: (){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
        },);
  }
}

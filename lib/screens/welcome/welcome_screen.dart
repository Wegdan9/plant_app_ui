import 'package:flutter/material.dart';
import 'package:plant_app_ui/themes/app_theme.dart';

import 'welcome_widgets/getStartedButtonWidget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppTheme.bgImage),
                fit: BoxFit.cover,
              )
            ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric( horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Go Green', style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white, fontWeight: FontWeight.w700)),
            SizedBox(height: 16,),
            Text('Beauty blooms in the heart as well as garden', style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Colors.white,)),
            SizedBox(height: 40,),
            Align(
              alignment: Alignment.center,
              child: GetStartedButton(),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

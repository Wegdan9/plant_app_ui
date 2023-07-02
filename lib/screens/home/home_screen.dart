import 'package:flutter/material.dart';
import 'package:plant_app_ui/data.dart';
import 'package:plant_app_ui/screens/home/home_widgets/profile_widget.dart';
import 'package:plant_app_ui/screens/home/home_widgets/search_widget.dart';

import 'home_widgets/single_product_widget.dart';

class HomeScreen extends StatelessWidget {
  static const String HOME_SCREEN_ROUTE = '/homeScreenRoute';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            ///all Widgets must be SLIVERS
        slivers: [
          ProfileWidget(),
          SearchWidget(),
          SliverToBoxAdapter(child: SizedBox(height: 10,)),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 24,
              crossAxisSpacing: 20,
              childAspectRatio: 0.7
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                //ProductModel productModel = productList[index];
                return SingleProductWidget(productModel: productList[index]);
              },
              childCount: productList.length,
            ),
          )
        ],
      )),
    );
  }
}

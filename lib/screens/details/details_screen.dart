import 'package:flutter/material.dart';
import 'package:plant_app_ui/data.dart';
import 'package:plant_app_ui/screens/details/details_widgets/product_amount_widget.dart';
import 'package:plant_app_ui/themes/app_theme.dart';

class ProductDetailsScreen extends StatelessWidget {
  static const String PRODUCT_DETAILS_SCREEN_ROUTE = '/productDetailsScreenRoute';
  const ProductDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = ModalRoute.of(context)!.settings.arguments as ProductModel;
    Size size = MediaQuery.of(context).size;
    double imageHeight = size.height * 0.6;

    return Scaffold(
      backgroundColor: Colors.white,
        body: Stack(
          children: [
            Positioned(
                height: imageHeight,
                left: 0,
                right: 0,
                child: Image.asset(product.image, fit: BoxFit.cover,)
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: imageHeight * 0.9,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.title, style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.w600,
                          ),),
                          SizedBox(height: 10,),
                          Text('\$${product.price}',style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight:FontWeight.w600, color: AppTheme.primarySwatch ),),
                        ],
                      ),
                      Text(product.dec, style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color:Colors.grey,
                          height: 1.5
                      ),),
                      ///Product Amount
                      ProductAmountWidget(),
                    ],
                  ),
                )
            ),
            Positioned(
              left: 0,
              right: 0,
              top: size.height/100 * 5,
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                ),
                trailing: IconButton(
                  icon: Icon(Icons.favorite_border_outlined),
                  onPressed: (){},
                ),
              ),
            )

          ],
        )

        );
  }
}

import 'package:flutter/material.dart';
import 'package:plant_app_ui/data.dart';
import 'package:plant_app_ui/screens/details/details_screen.dart';
import 'package:plant_app_ui/themes/app_theme.dart';

class SingleProductWidget extends StatelessWidget {
  
  ProductModel productModel;
   SingleProductWidget({Key? key, required this.productModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
      Navigator.pushNamed(context, ProductDetailsScreen.PRODUCT_DETAILS_SCREEN_ROUTE,
          arguments: productModel
          );
      },
      child: Container(
        padding: EdgeInsets.only(left: 13,right: 13,top: 17),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(productModel.image), fit: BoxFit.cover),
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(productModel.title, style: Theme.of(context).textTheme.bodyMedium,),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Text('${productModel.price}',style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.bold),
                ),
              ),
              trailing: IconButton(
                  icon: Icon(Icons.favorite_border_outlined, color: AppTheme.kIconColor,),
                onPressed: (){},

              ),
            )
          ],
        ),
      ),
    );
  }
}

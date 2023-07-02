import 'package:flutter/material.dart';
import 'package:plant_app_ui/themes/app_theme.dart';

class ProductAmountWidget extends StatelessWidget {
  const ProductAmountWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(children: [
          FloatingActionButton.small(
            child: Icon(Icons.remove, color: Colors.black,),
            backgroundColor: AppTheme.kIconColor,
              onPressed: (){}
          ),
          Text('1', style: Theme.of(context).textTheme.headlineSmall!.copyWith(fontWeight: FontWeight.bold),),
          FloatingActionButton.small(
            child: Icon(Icons.add),
              onPressed: (){}
          ),
        ],),
        SizedBox(width: 20,),
        Expanded(
          child: ElevatedButton(
              child: Text('Add to Cart', style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),),
              onPressed: (){}, ),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app_ui/themes/app_theme.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Row(
          children: [
            Expanded(
              child: Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        suffix:  SvgPicture.asset(AppTheme.searchIcon,),
                        labelText: 'Search',
                        labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w600, color: Colors.grey),
                      ),
                    ),
              ),
            ),
            IconButton(
                icon: SvgPicture.asset(AppTheme.menuIcon),
                onPressed: (){},)
          ],
        )
    );
  }
}

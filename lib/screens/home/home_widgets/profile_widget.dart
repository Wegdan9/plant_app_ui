import 'package:flutter/material.dart';
import 'package:plant_app_ui/themes/app_theme.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: ListTile(
        contentPadding: EdgeInsets.all(20),
        leading: Text('Discover', style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w600),),
        trailing: InkWell(
          onTap: (){},
          child: CircleAvatar(
            backgroundImage: AssetImage(AppTheme.profileImage),
          ),
        ),
      ),
    );
  }
}

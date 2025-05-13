import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/custom_alert_dialog.dart';
import '../widgets/menu_bar_card_widget.dart';

class MenuBarScreen extends StatefulWidget {
  const MenuBarScreen({super.key});

  @override
  State<MenuBarScreen> createState() => _MenuBarScreenState();
}

class _MenuBarScreenState extends State<MenuBarScreen> {
  Set<int> isFavoriteList = {};

  void toogleUpdateFavorite(int index) {
    setState(() {
      if (isFavoriteList.contains(index)) {
        isFavoriteList.remove(index);
      } else {
        isFavoriteList.add(index);
      }
    });
  }

  final List<String> _itemsList = ['New', 'Mains', 'Sides', 'Drinks'];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          
          children: [

            UIHelper.verticalSpace(50.h),
            // MenuBar Card Widget is here
            MenuBarCardWidget(
              title: "Dawn'On Member",
              subtitle:
                  "You're seeing this menu 24 hours before everyone else!",
              image: Assets.images.capss.path,
            ),

         /*    MaterialButton(onPressed: (){
              showCustomDialog(
                context: context,
                icon: Assets.icons.cppp,

                 onPressed: () {


                });
            }, child: Text('Click here'),), */
          ],
        ),
      ),

      /* ListView.builder(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: _itemsList.length,
        itemBuilder:
            (_, index) => InkWell(
              onTap: () {},
              child: Container(
                /*  decoration: BoxDecoration(
              color: AppColors.cFFFFFF,
                        ), */
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),

                child: Text(_itemsList[index]),
              ),
            ),
      ), */
    );
  }
}




/*  return NewMenuBarWidget(
                  image: Assets.images.food.path, 
                  foodName: 'Food Truck Friday',
                  foodDiscount: '10% Off',
                  foodDescription: 'Warm up with our new seasonal specials',
                foodAmount: '\$50.55',
               foodLeaveAmount:  '\$60.55',
                
                  isFavorite: isFavorite,
                 
                  onFavoriteToggle: () => toogleUpdateFavorite(index),
               
                );  */
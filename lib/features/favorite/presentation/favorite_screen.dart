import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/favorite_list_widget.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen>
    with SingleTickerProviderStateMixin {
  Set<int> isFavoriteList = {};

  void toggleUpdateFavorite(int index) {
    setState(() {
      if (isFavoriteList.contains(index)) {
        isFavoriteList.remove(index);
      } else {
        isFavoriteList.add(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Favorite'),
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.zero,
        itemBuilder:
            (_, index) => Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: FavoriteListWidget(
                image: Assets.images.food.path,
                foodName: 'Food Truck Friday',
                foodDescription: 'Warm up with our new seasonal specials',
                foodAmount: '\$50.55',
                foodLeaveAmount: '\$60.55',
                isFavorite: isFavoriteList.contains(index),
                onFavoriteToggle: () => toggleUpdateFavorite(index),
              ),
            ),
      ),
    );
  }
}

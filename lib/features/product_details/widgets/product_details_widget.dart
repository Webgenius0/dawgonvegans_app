import 'package:dawgonvegans/gen/colors.gen.dart';
import 'package:dawgonvegans/helpers/navigation_service.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:dawgonvegans/provider/product_details_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../common_widgets/custom_alert_dialog.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';

class ProductDetailsWidget extends StatelessWidget {
  final String productName;
  final String points;
  final String productId;
  final String price;
  final String rating;
  final String description;
  final String comments;
  final String userPhoto;
  final String userName;
  final String date;
  final String totalRating;
  final String totalReview;

  const ProductDetailsWidget({
    super.key,
    required this.productName,
    required this.points,
    required this.productId,
    required this.price,
    required this.rating,
    required this.description,
    required this.comments,
    required this.userPhoto,
    required this.userName,
    required this.date,
    required this.totalRating,
    required this.totalReview,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: ClampingScrollPhysics(),

      child: Column(
        //   mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Name  || points || product Id
          Row(
            spacing: 10.w,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                productName,
                style: TextFontStyle.textStyle24c0F0F0FManropeW600,
              ),
              Text(points, style: TextFontStyle.textStyle24c36C0DEManropeW600),
              Spacer(),
              Text(
                '# $productId',
                style: TextFontStyle.textStyle16c00020AManropeW500,
              ),
            ],
          ),

          // Price  || Rating
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$ $price',
                style: TextFontStyle.textStyle18cFE8204ManropeW700,
              ),
              Container(
                width: 60.w,
                padding: EdgeInsets.all(8.sp),
                decoration: ShapeDecoration(
                  color: const Color(0x19FE8C00),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
                child: Row(
                  spacing: 5.w,
                  children: [SvgPicture.asset(Assets.icons.star), Text(rating)],
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(15.h),
          Text(
            'Description',
            style: TextFontStyle.textStyle16c202531ManropeW600,
          ),

          UIHelper.verticalSpace(10.h),
          Text(description, style: TextFontStyle.textStyle12c00020AManropeW400),
          UIHelper.verticalSpace(10.h),
          Divider(thickness: 1.w, color: AppColors.cF0F0F0),

          UIHelper.verticalSpace(15.h),
          Text('Amazing', style: TextFontStyle.textStyle16c202531ManropeW600),

          UIHelper.verticalSpace(10.h),
          Text(comments, style: TextFontStyle.textStyle12c00020AManropeW400),
          UIHelper.verticalSpace(10.h),

          //  User Name  || User Photo || Create Date
          Row(
            spacing: 10.w,
            children: [
              Image.asset(
                Assets.images.photo.path,
                width: 50.w,
                height: 50.h,
                fit: BoxFit.cover,
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [Text(userName), Text(date)],
              ),
            ],
          ),
          UIHelper.verticalSpace(20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(Assets.icons.star, width: 20.w, height: 20.h),
              SvgPicture.asset(Assets.icons.star, width: 20.w, height: 20.h),
              SvgPicture.asset(Assets.icons.star, width: 20.w, height: 20.h),
              SvgPicture.asset(Assets.icons.star, width: 20.w, height: 20.h),
              SvgPicture.asset(Assets.icons.star, width: 20.w, height: 20.h),
              UIHelper.horizontalSpace(5.w),
              Text('74 Reviews...See More'),
            ],
          ),
          UIHelper.verticalSpace(20.h),
          CustomButton(
            width: 80.w,
            height: 30.h,
            textStyle: TextFontStyle.textStyle12cFE8204ManropeW400.copyWith(
              color: Colors.amber,
            ),
            side: BorderSide(color: AppColors.cFE8204),
            color: AppColors.cFFF8F3,

            buttonName: 'Give Rate',
            onPressed: () {},
          ),

          UIHelper.verticalSpace(20.h),
          Consumer<ProductDetailsProvider>(
            builder: (context, provider, child) {
              return Row(
                spacing: 10.w,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      provider.addCountPrice();
                    },

                    child: SvgPicture.asset(Assets.icons.addIcon),
                  ),
                  Text(
                    provider.count.toString(),
                    style: TextFontStyle.textStyle18c00020AManropeW600,
                  ),
                  InkWell(
                    child: SvgPicture.asset(Assets.icons.minusIcon),
                    onTap: () {
                      provider.decrementCountPrice();
                    },
                  ),
                  Spacer(),
                  Text(
                    '\$ ${provider.price.toStringAsFixed(2).toString()}',
                    style: TextFontStyle.textStyle18cFE8204ManropeW700,
                  ),
                ],
              );
            },
          ),

          UIHelper.verticalSpace(20.h),

          CustomButton(
            buttonName: 'Order Request',
            onPressed: () {
              showCustomDialog(
                title: 'Thank You',
                subTitle: 'Your request has been send',
                subTitleTextStyle: TextFontStyle.textStyle16c00020AManropeW400
                    .copyWith(color: AppColors.c00020A.withValues(alpha: 0.99)),
                buttonText: 'ok',
                context: context,
                onPressed: () {
                  NavigationService.goBack;
                },
              );
            },
            side: BorderSide.none,
          ),

          UIHelper.verticalSpace(20.h),
        ],
      ),
    );
  }
}

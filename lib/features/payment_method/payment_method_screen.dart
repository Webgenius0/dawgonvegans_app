import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/common_widgets/custom_button.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../common_widgets/custom_alert_dialog.dart';
import '../../gen/colors.gen.dart';

class PaymentMethodScreen extends StatelessWidget {
  const PaymentMethodScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Payment Method'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        child: Column(
          spacing: 15.h,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
              decoration: ShapeDecoration(
                color: AppColors.cFFFFFF,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1.w, color: AppColors.cEDEDED),
                  borderRadius: BorderRadius.circular(15.r),
                ),
              ),
              child: ListTile(
                leading: SvgPicture.asset(
                  Assets.icons.paymentIcon,
                  width: 30.w,
                  height: 30.h,
                  fit: BoxFit.none,
                ),

                title: Text(
                  'Square',
                  style: TextFontStyle.textStyle14c202531ManropeW500,
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 5.h),
                  child: Text(
                    '**** **** 0582 4672',
                    style: TextFontStyle.textStyle12c878787ManropeW400,
                  ),
                ),
                trailing: Image.asset(Assets.images.s.path),
              ),
            ),

            CustomButton(
              buttonName: 'Pay Now (\$200)',
              onPressed: () {
                showCustomDialog(
                  context: context,
                  title: 'Welcome to SuperClub!',
                  subTitle: 'You have successfully subscribed to SuperClub!',
                  onPressed: () {},
                  buttonText: 'Ok'
                );
              },
              side: BorderSide.none,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dawgonvegans/common_widgets/custom_button.dart';
import 'package:dawgonvegans/features/membership/widgets/membership_tile_widget.dart';
import 'package:dawgonvegans/gen/colors.gen.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/text_font_style.dart';

class MembershipWidget extends StatelessWidget {
  final String memberShipType;
  final String amount;
  final Color color;
  const MembershipWidget({
    super.key,
    required this.amount,
    required this.memberShipType,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,

      decoration: ShapeDecoration(
        color: AppColors.cFFFFFF,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: const Color(0xFFEEEEEE)),
          borderRadius: BorderRadius.all(Radius.circular(15.r)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Text Widget
          Container(
            width: 1.sw,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15.r),
                topRight: Radius.circular(15.r),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  memberShipType,
                  style: TextFontStyle.textStyle32cFFFFFFManropeW600,
                ),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '\$$amount',
                        style: TextFontStyle.textStyle18cFFFFFFManropeW600,
                      ),
                      TextSpan(
                        text: '/',
                        style: TextFontStyle.textStyle18cFFFFFFManropeW600,
                      ),
                      TextSpan(
                        text: ' Annual',
                        style: TextFontStyle.textStyle14cFAFAFAManropeW400,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder:
                (_, index) =>
                    MembershipTileWidget(titleName: 'Basic Menu Access'),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            child: Divider(color: AppColors.cEEEEEE, thickness: 1.w),
          ),

          UIHelper.verticalSpace(15.h),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: CustomButton(
              buttonName: 'Selecte Plan',
              onPressed: () {},
              side: BorderSide.none,
            ),
          ),
          UIHelper.verticalSpace(15.h),
        ],
      ),
    );
  }
}

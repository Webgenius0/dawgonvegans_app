/* import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../constants/text_font_style.dart';
import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
import '../helpers/ui_helpers.dart';
import '../provider/record_evidance_media_provider.dart';

class MediaProgressWidget extends StatelessWidget {
  final String icon;
  final String fileName;
  final String fileSize;
  final int progressPercentage;
  final RecordEvidanceMediaProvider mediaPickerProvider;
  final int index;

  const MediaProgressWidget({
    super.key,
    required this.icon,
    required this.fileName,
    required this.fileSize,
    required this.progressPercentage,
    required this.mediaPickerProvider,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.sw,
      padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.w, color: AppColors.c8F9098),
          borderRadius: BorderRadius.circular(15.r),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left icon
          SvgPicture.asset(icon, width: 30.w, height: 30.h),

          UIHelper.horizontalSpace(10.w),

          // File name and progress column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // File name and close icon row
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        fileName,
                        style: TextFontStyle.textStyle15c101820NunitoSansW700,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    UIHelper.horizontalSpace(8.w),
                    InkWell(
                      onTap: () {
                       

                       mediaPickerProvider.cleanMedia(index);
                      },
                      child: SvgPicture.asset(
                        Assets.icons.close,
                        width: 20.w,
                        height: 20.h,
                      ),
                    ),
                  ],
                ),

                UIHelper.verticalSpace(5.h),

                // File size
                Text(
                  fileSize,
                  style: TextFontStyle.textStyle13c101820NunitoSansW600,
                ),

                UIHelper.verticalSpace(10.h),

                // Progress bar with percentage
                Row(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4.r),
                        child: LinearProgressBar(
                          maxSteps: 100,
                          progressType: LinearProgressBar.progressTypeLinear,
                          currentStep: progressPercentage,
                          progressColor: Colors.black,
                          backgroundColor: Colors.grey,
                          borderRadius: BorderRadius.circular(10.r), //  NEW
                        ),
                      ),
                    ),
                    UIHelper.horizontalSpace(8.w),
                    Text(
                      '$progressPercentage%',
                      style: TextFontStyle.textStyle13c101820NunitoSansW600,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
 */
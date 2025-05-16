import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/common_widgets/custom_button.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

import '../../../../common_widgets/custom_body_text_widget.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/all_routes.dart';
import '../../../../helpers/navigation_service.dart';
import '../../../../provider/otp_provider.dart';
import '../widgets/pinput_theme_widget.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'OTP'),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          spacing: 30.h,
          children: [
            CustomBodyTextWidget(
              titleText: 'Email verification',
              subTitleText:
                  "Enter the verification code we send you on: Alberts******@gmail.com",
            ),

            /// Pinput Form Field
            Consumer<OtpProvider>(
              builder: (context, provider, child) {
                return Align(
                  alignment: Alignment.center,
                  child: Form(
                    key: _formKey,
                    child: Pinput(
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(4),
                      ],
                      forceErrorState: provider.isOtpInvalid,
                      isCursorAnimationEnabled: true,
                      keyboardType: TextInputType.number,
                      pinAnimationType: PinAnimationType.slide,
                      cursor: Container(
                        width: 2.w,
                        height: 20.h,
                        color: Colors.black,
                      ),

                      animationCurve: Curves.fastEaseInToSlowEaseOut,
                      textInputAction: TextInputAction.done,
                      length: 4,
                      defaultPinTheme: defaultPinTheme,
                      focusedPinTheme: focusedPinTheme,
                      submittedPinTheme:
                          provider.isOtpInvalid
                              ? errorPinTheme
                              : defaultPinTheme,
                      errorPinTheme: errorPinTheme,
                      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                      showCursor: true,
                      onChanged: (pin) {
                        provider.validateOtp(pin);
                      },
                      onCompleted: (pin) {
                        provider.updateOtp(pin);
                      },
                      validator: (pin) {
                        if (pin == null || pin.isEmpty) {
                          provider.setOtpInvalid(true);
                          return 'Please enter the OTP';
                        } else if (pin.length != 4) {
                          provider.setOtpInvalid(true);
                          return 'The OTP must be 4 digits.';
                        }
                        provider.setOtpInvalid(false);
                        return null;
                      },
                    ),
                  ),
                );
              },
            ),

            Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Didn’t receive code? ',
                    style: TextFontStyle.textStyle14cFE8C00ManropeW600.copyWith(
                      color: AppColors.c878787,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'Resend',
                    style: TextFontStyle.textStyle14cFE8C00ManropeW600.copyWith(
                      color: AppColors.cFE8204,
                      fontSize: 14.sp,
                    ),
                  ),
                ],
              ),
            ),

            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                SvgPicture.asset(
                  Assets.icons.otpClockIcon,
                  width: 30.w,
                  height: 30.h,
                ),

               
              ],
            ),


            CustomButton(buttonName: 'Continue', onPressed: (){

               NavigationService.navigateTo(Routes.resetPasswordScreen);
            } ,
            side: BorderSide.none,
            ),
          ],
        ),
      ),
    );
  }
}

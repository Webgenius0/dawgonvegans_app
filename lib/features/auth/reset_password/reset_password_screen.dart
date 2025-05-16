import 'package:dawgonvegans/common_widgets/custom_text_form_field.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/constants/validator.dart';
import 'package:dawgonvegans/helpers/all_routes.dart';
import 'package:dawgonvegans/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../common_widgets/custom_appbar.dart';
import '../../../common_widgets/custom_body_text_widget.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../gen/assets.gen.dart';
import '../../../helpers/ui_helpers.dart';
import '../../../provider/reset_password_provider.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();

  final TextEditingController _confirmPasswordController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Reset Password'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Form(
          key: _formKey,
          child: Consumer<ResetPasswordProvider>(
            builder: (context, provider, child) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Body Text
                  CustomBodyTextWidget(
                    titleText: 'Reset Password',
                    subTitleText:
                        'Your new password must be different from the previously used password',
                  ),

                  // Password Field
                  Text(
                    'New password',
                    style: TextFontStyle.textStyle14c202531ManropeW900,
                  ),
                  UIHelper.verticalSpace(10.h),

                  CustomTextFormField(
                    controller: _passwordController,
                    validator: passwordValidator,
                    hintText: 'Password',
                    obscureText: !provider.passwordVisible,
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: InkWell(
                      onTap: provider.togglePasswordVisibility,
                      child:
                          provider.passwordVisible
                              ? SvgPicture.asset(
                                Assets.icons.eyeOn,
                                width: 25.w,
                                height: 25.h,
                                fit: BoxFit.none,
                              )
                              : SvgPicture.asset(
                                Assets.icons.eyeOff,
                                width: 25.w,
                                height: 25.h,
                                fit: BoxFit.none,
                              ),
                    ),
                  ),

                  UIHelper.verticalSpace(15.h),
                  Text(
                    'Confirm password',
                    style: TextFontStyle.textStyle14c202531ManropeW900,
                  ),
                  UIHelper.verticalSpace(10.h),
                  // confirm Pasword
                  CustomTextFormField(
                    controller: _confirmPasswordController,
                    validator:
                        (value) => confirmPasswordValidator(
                          value,
                          _passwordController.text,
                        ),
                    hintText: 'Confirm Your Password',
                    obscureText: !provider.confirmPasswordVisible,
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: InkWell(
                      onTap: provider.toggleConfirmPasswordVisibility,
                      child:
                          provider.confirmPasswordVisible
                              ? SvgPicture.asset(
                                Assets.icons.eyeOn,
                                width: 25.w,
                                height: 25.h,
                                fit: BoxFit.none,
                              )
                              : SvgPicture.asset(
                                Assets.icons.eyeOff,
                                width: 25.w,
                                height: 25.h,
                                fit: BoxFit.none,
                              ),
                    ),
                  ),

                  // Sign in Button
                  UIHelper.verticalSpace(100.h),
                  CustomButton(
                    side: BorderSide.none,
                    buttonName: 'Verify Account',
                    onPressed: () async {
                      //   if (_formKey.currentState!.validate()) {}

                      await showModalBottomSheet(
                        context: context,
                           isDismissible: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.r),
                            topRight: Radius.circular(25.r),
                          ),
                        ),
                        builder:
                            (_) => Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 30.h,
                                horizontal: 20.w,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.asset(
                                    width: 200.w,
                                    height: 200.h,
                                    Assets.images.resetSuccess.path,
                                  ),

                                  Text(
                                    'password Changed',
                                    style:
                                        TextFontStyle
                                            .textStyle24c202531ManropeW600,
                                  ),
                                  UIHelper.verticalSpace(5.h),
                                  Text(
                                    'Password changed successfully, you can login again with a new password',
                                    style:
                                        TextFontStyle
                                            .textStyle14c202531ManropeW500,
                                  ),

                                  UIHelper.verticalSpace(30.h),

                                  CustomButton(
                                    side: BorderSide.none,
                                    buttonName: 'Continue',
                                    onPressed: () {
                                      NavigationService.navigateToWithArgs(Routes.navigationScreen, {'index' : 0});
                                    },
                                  ),
                                ],
                              ),
                            ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

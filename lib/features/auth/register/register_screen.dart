import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/common_widgets/custom_text_form_field.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/constants/validator.dart';
import 'package:dawgonvegans/helpers/all_routes.dart';
import 'package:dawgonvegans/helpers/navigation_service.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../common_widgets/custom_body_text_widget.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../common_widgets/custom_horizontal_widget.dart';
import '../../../common_widgets/social_icon_widget.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';
import '../../../provider/register_provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isChecked = false;
  void toogleCheckedUpdated() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFF8F3,
      // appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UIHelper.verticalSpace(40.h),
              // Body Text
              CustomBodyTextWidget(
                titleText: 'Create your new account',
                subTitleText:
                    'Create an account to start looking for the food you like',
              ),

              // Email Address  Text
              Text(
                'Email Address',
                style: TextFontStyle.textStyle14c202531ManropeW900,
              ),
              UIHelper.verticalSpace(10.h),
              CustomTextFormField(
                controller: _emailController,
                validator: emailValidator,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter Email',
              ),

              // Name
              UIHelper.verticalSpace(15.h),
              Text('Name', style: TextFontStyle.textStyle14c202531ManropeW900),
              CustomTextFormField(
                controller: _nameController,
                validator: nameValidator,
                keyboardType: TextInputType.text,
                hintText: 'Enter Your Name',
              ),

              // Password Text
              UIHelper.verticalSpace(15.h),
              Text(
                'Password',
                style: TextFontStyle.textStyle14c202531ManropeW900,
              ),
              UIHelper.verticalSpace(10.h),
              Consumer<RegisterProvider>(
                builder: (context, provider, child) {
                  return CustomTextFormField(
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
                  );
                },
              ),

              // Forgot password Text
              UIHelper.verticalSpace(10.h),
              Row(
                spacing: 10.w,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  //Check Box
                  GestureDetector(
                    onTap: () {
                      toogleCheckedUpdated();
                    },
                    child: Container(
                      width: 20.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.r),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color:
                              isChecked ? AppColors.cFE8C00 : AppColors.c8F9098,
                          width: 1.w,
                        ),
                        color:
                            isChecked ? AppColors.cFE8C00 : Colors.transparent,
                      ),
                      child:
                          isChecked
                              ? Icon(
                                Icons.check,
                                color: AppColors.cFFFFFF,
                                size: 15.sp,
                              )
                              : null,
                    ),
                  ),

                  Expanded(
                    child: Text.rich(
                      TextSpan(
                        text: 'I Agree with ',
                        style: TextFontStyle.textStyle14c0F0F0FManropeW500
                            .copyWith(fontSize: 13.sp, color: Colors.black87),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Terms of Service ',
                            style: TextFontStyle.textStyle14cFE8C00ManropeW600
                                .copyWith(fontSize: 13.sp),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: TextFontStyle.textStyle14c0F0F0FManropeW500
                                .copyWith(fontSize: 13.sp),
                          ),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextFontStyle.textStyle14cFE8C00ManropeW600
                                .copyWith(fontSize: 13.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // Sign in Button
              UIHelper.verticalSpace(30.h),
              CustomButton(
                side: BorderSide.none,
                buttonName: 'Register',
                onPressed: () {
                  // if (_formKey.currentState!.validate()) {}
                  NavigationService.navigateTo(Routes.membershipScreen);
                },
              ),

              UIHelper.verticalSpace(20.h),

              // Horizontal Line
              CustomHorizontalWidget(),

              // Social Icon
              UIHelper.verticalSpace(20.h),
              SocialIconWidget(appleIcononTap: () {}, googleIcononTap: () {}),

              UIHelper.verticalSpace(40.h),

              Center(
                child: Text.rich(
                  TextSpan(
                    text: "If You have an Account? ",
                    style: TextFontStyle.textStyle14c0F0F0FManropeW500,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Login',
                        style: TextFontStyle.textStyle14cFE8C00ManropeW600,
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                NavigationService.navigateToUntilReplacement(
                                  Routes.loginScreen,
                                );
                              },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/common_widgets/custom_text_form_field.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/constants/validator.dart';
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
import '../../../provider/login_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFF8F3,
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Body Text
              CustomBodyTextWidget(
                titleText: 'Login to your account',
                subTitleText: 'Please sign in to your account ',
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

              // Password Text
              UIHelper.verticalSpace(15.h),
              Text(
                'Password',
                style: TextFontStyle.textStyle14c202531ManropeW900,
              ),
              UIHelper.verticalSpace(10.h),
              Consumer<LoginProvider>(
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
                                width: 24.w,
                                height: 24.h,
                                fit: BoxFit.none,
                              )
                              : SvgPicture.asset(
                                Assets.icons.eyeOff,
                                width: 24.w,
                                height: 24.h,
                                fit: BoxFit.none,
                              ),
                    ),
                  );
                },
              ),

              // Forgot password Text
              UIHelper.verticalSpace(10.h),
              InkWell(
                onTap: () {},
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'Forgot password?',
                    style: TextFontStyle.textStyle14cFE8C00ManropeW500,
                  ),
                ),
              ),

              // Sign in Button
              UIHelper.verticalSpace(30.h),
              CustomButton(
                side: BorderSide.none,
                buttonName: 'Sign In',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
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
                    text: "Don't have an account? ",
                    style: TextFontStyle.textStyle14c0F0F0FManropeW500,
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Register',
                        style: TextFontStyle.textStyle14cFE8C00ManropeW600,
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                // Add your navigation logic here
                                log('Tapped me');
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

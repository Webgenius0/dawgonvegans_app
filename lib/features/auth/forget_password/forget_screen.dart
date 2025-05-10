import 'package:dawgonvegans/common_widgets/custom_text_form_field.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/constants/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common_widgets/custom_appbar.dart';
import '../../../common_widgets/custom_body_text_widget.dart';
import '../../../common_widgets/custom_button.dart';
import '../../../helpers/ui_helpers.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  final TextEditingController _forgetEmailController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Forgot Password'),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Body Text
              CustomBodyTextWidget(
                titleText: 'Forgot password?',
                subTitleText:
                    'Enter your email address and we’ll send you confirmation code to reset your password',
              ),

              // Email Address  Text
              Text(
                'Email Address',
                style: TextFontStyle.textStyle14c202531ManropeW900,
              ),
              UIHelper.verticalSpace(10.h),
              CustomTextFormField(
                controller: _forgetEmailController,
                validator: emailValidator,
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter Email',
              ),

              // Sign in Button
              UIHelper.verticalSpace(100.h),
              CustomButton(
                side: BorderSide.none,
                buttonName: 'Sign In',
                onPressed: () {
                  if (_formKey.currentState!.validate()) {}
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

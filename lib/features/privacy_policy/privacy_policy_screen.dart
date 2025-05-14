import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/text_font_style.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Privacy Policy'),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Text(
          style: TextFontStyle.textStyle18c424242ManropeW400,
          "we respect and protect the privacy of our users. This Privacy Policy outlines the types of personal information we collect, how we use it, and how we protect your information.",
        ),
      ),
    );
  }
}

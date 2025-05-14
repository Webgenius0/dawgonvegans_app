import 'package:dawgonvegans/helpers/toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../gen/assets.gen.dart';
import 'contact_tile_widget.dart';

class ContactUsWidget extends StatelessWidget {
  const ContactUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            ContactTileWidget(
              icon: Assets.icons.contactUsIcon,
              title: 'Contact us',
              onTap: () {
                ToastUtil.showShortToast(
                  title: "Don't Worry",
                  message: 'I am Working',
                );
              },
            ),
            ContactTileWidget(
              icon: Assets.icons.whatsappIcon,
              title: 'WhatsApp',
              onTap: () {
                ToastUtil.showShortToast(
                  title: "Don't Worry",
                  message: 'I am Working',
                );
              },
            ),
            ContactTileWidget(
              icon: Assets.icons.instraIcon,
              title: 'Instragram',
              onTap: () {
                ToastUtil.showShortToast(
                  title: "Don't Worry",
                  message: 'I am Working',
                );
              },
            ),
            ContactTileWidget(
              icon: Assets.icons.facebookIcon,
              title: 'Facebook',
              onTap: () {
                ToastUtil.showShortToast(
                  title: "Don't Worry",
                  message: 'I am Working',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/common_widgets/custom_button.dart';
import 'package:dawgonvegans/constants/text_font_style.dart';
import 'package:dawgonvegans/helpers/toast.dart';
import 'package:dawgonvegans/helpers/ui_helpers.dart';
import 'package:dawgonvegans/provider/edit_profile_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../common_widgets/custom_bottom_sheet_image_picker.dart';
import '../../common_widgets/custom_cached_network_image.dart';
import '../../common_widgets/custom_text_form_field.dart';
import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: "Edit Profile"),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(30.h),
            // Profile Photo
            Consumer<EditProfileProvider>(
              builder: (context, provider, child) {
                return Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      provider.selectedImage != null
                          ? ClipOval(
                            child: Image.file(
                              provider.selectedImage!,
                              fit: BoxFit.cover,
                              width: 100.w,
                              height: 100.h,
                            ),
                          )
                          : ClipOval(
                            child: CustomCachedNetworkImage(
                              imageUrl: Assets.images.profileImg.path,
                              fit: BoxFit.cover,
                              width: 100.w,
                              height: 100.h,
                            ),
                          ),
                      Positioned(
                        bottom: 0.h,
                        right: 3.w,
                        child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              builder: (_) {
                                return Container(
                                  padding: EdgeInsets.symmetric(vertical: 20.h),
                                  height: 0.40.sw,
                                  child: CustomBottomSheetImagePicker(
                                    onTap: (int index) {
                                      if (index == 0) {
                                        provider.openCamera();
                                      } else if (index == 1) {
                                        provider.opengallery();
                                      } else {
                                        ToastUtil.showShortToast(
                                          title: 'Something went wrong',
                                          message: 'Please try again.',
                                        );
                                      }
                                    },
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(5.sp),
                            decoration: BoxDecoration(
                              color: AppColors.cFFFFFF,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: SvgPicture.asset(
                              Assets.icons.camera,
                              width: 15.w,
                              height: 15.h,
                              colorFilter: const ColorFilter.mode(
                                AppColors.c242760,
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            UIHelper.verticalSpace(30.h),
            Text(
              'Your Details',
              style: TextFontStyle.textStyle18c00020AManropeW600,
            ),
            UIHelper.verticalSpace(15.h),

            // First Name
            CustomTextFormField(
              controller: _firstNameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your First Name';
                }

                return null;
              },
              keyboardType: TextInputType.text,
              hintText: 'First Name',
            ),

            UIHelper.verticalSpace(10.h),

            // Last Name
            CustomTextFormField(
              controller: _lastNameController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Last Name';
                }

                return null;
              },
              keyboardType: TextInputType.text,
              hintText: 'Last Name',
            ),

            UIHelper.verticalSpace(10.h),
            // Email Name
            CustomTextFormField(
              textInputAction: TextInputAction.done,
              controller: _emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Email ';
                }

                return null;
              },
              keyboardType: TextInputType.emailAddress,
              hintText: 'Email Address',
            ),

            UIHelper.verticalSpace(10.h),
            // Password
            Consumer<EditProfileProvider>(
              builder: (context, provider, child) {
                return CustomTextFormField(
                  obscureText: !provider.passwordVisible,
                  controller: _passwordController,
                  textInputAction: TextInputAction.done,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Password';
                    }

                    return null;
                  },
                  keyboardType: TextInputType.visiblePassword,
                  hintText: 'Password ',
                  suffixIcon: SizedBox(
                    width: 25.w,
                    height: 20.h,
                    child: IconButton(
                      onPressed: provider.togglePasswordVisibility,
                      icon: SvgPicture.asset(
                        provider.passwordVisible
                            ? Assets.icons.eyeOn
                            : Assets.icons.eyeOff,
                        fit: BoxFit.contain,
                        width: 20.w,
                        height: 20.h,
                        colorFilter: ColorFilter.mode(
                          AppColors.c66686C,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),

            UIHelper.verticalSpace(10.h),

            // Address
            CustomTextFormField(
              controller: _addressController,
              textInputAction: TextInputAction.done,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your Adress';
                }
                return null;
              },
              keyboardType: TextInputType.text,
              hintText: 'Address ',
            ),

            UIHelper.verticalSpace(30.h),
            CustomButton(
              buttonName: 'Save Change',
              onPressed: () {},
              side: BorderSide.none,
            ),
          ],
        ),
      ),
    );
  }
}

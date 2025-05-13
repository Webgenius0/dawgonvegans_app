import 'package:dawgonvegans/common_widgets/custom_appbar.dart';
import 'package:dawgonvegans/features/community_chat/widgets/membership_check_card_widget.dart';
import 'package:dawgonvegans/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/text_font_style.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';
import '../widgets/chat_member_list_widget.dart';

class CommunityChatScreen extends StatefulWidget {
  const CommunityChatScreen({super.key});

  @override
  State<CommunityChatScreen> createState() => _CommunityChatScreenState();
}

class _CommunityChatScreenState extends State<CommunityChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(text: 'Community Chat'),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            // Membership Card Widget
            MembershipCheckCardWidget(
              title: 'Welcome to the private chat for SuperClub member!',
              subtitle: '',
              image: Assets.images.startIcon.path,
            ),

            UIHelper.verticalSpace(15.h),

            // Divider i
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Left Divider
                Expanded(
                  child: Divider(color: AppColors.cE6E1DD, thickness: 1.w),
                ),

                UIHelper.horizontalSpace(5.w),

                Text(
                  'Today',
                  style: TextFontStyle.textStyle14c8B8B8BManropeW400,
                ),

                UIHelper.horizontalSpace(5.w),

                /// Right Divider
                Expanded(
                  child: Divider(color: AppColors.cE6E1DD, thickness: 1.w),
                ),
              ],
            ),

            UIHelper.verticalSpace(15.h),

            ListView.separated(
              separatorBuilder: (_, index) => SizedBox(height: 10.h),
              itemCount: 10,
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (_, index) {
                return ChatMemberListWidget(
                  name: 'Mina Khan',
                  profileImage: Assets.images.profileImg.path,
                  lastMessage: 'Yes, it’s delicious! Highly recommend.',
                  time: '11:02 AM',
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

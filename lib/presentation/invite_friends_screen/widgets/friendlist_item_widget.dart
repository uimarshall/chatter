import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FriendlistItemWidget extends StatelessWidget {
  const FriendlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse5,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(
              25.h,
            ),
            margin: EdgeInsets.only(bottom: 18.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 24.h,
              top: 2.v,
              bottom: 17.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kevin Allsrub",
                  style: theme.textTheme.titleLarge,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Your’e friends on twitter",
                  style: CustomTextStyles.bodyMediumGray500,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              bottom: 31.v,
            ),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(6.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgCheckmark,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

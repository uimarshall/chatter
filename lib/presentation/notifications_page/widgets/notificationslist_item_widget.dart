import 'package:chatter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NotificationslistItemWidget extends StatelessWidget {
  const NotificationslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse22,
            height: 54.v,
            width: 52.h,
            radius: BorderRadius.circular(
              27.h,
            ),
            margin: EdgeInsets.only(bottom: 26.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 4.v,
              bottom: 28.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Kevin has followed you",
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
                SizedBox(height: 7.v),
                Text(
                  "1 hour ago",
                  style: CustomTextStyles.bodyLargeGray600,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

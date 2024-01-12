import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart' hide SearchController;

// ignore: must_be_immutable
class RecentsearchesItemWidget extends StatelessWidget {
  const RecentsearchesItemWidget({Key? key})
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
                  style: CustomTextStyles.bodyMediumGray600,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomOutlinedButton(
            width: 76.h,
            text: "Follow",
            margin: EdgeInsets.only(
              top: 9.v,
              bottom: 26.v,
            ),
          ),
        ],
      ),
    );
  }
}

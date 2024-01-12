import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class EventslistItemWidget extends StatelessWidget {
  const EventslistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 144.v,
              width: 147.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img19144x147,
                    height: 144.v,
                    width: 147.h,
                    radius: BorderRadius.circular(
                      10.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  CustomElevatedButton(
                    height: 20.v,
                    width: 54.h,
                    text: "LIVE",
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 12.v,
                    ),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup9027,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                    ),
                    buttonTextStyle: CustomTextStyles.labelMediumPrimary,
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img192,
              height: 144.v,
              width: 147.h,
              radius: BorderRadius.circular(
                10.h,
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "LIVE - We The Fest",
                  style: CustomTextStyles.titleSmallBlack90001,
                ),
                SizedBox(height: 6.v),
                Text(
                  "19 : 00 | Forg Stadium",
                  style: CustomTextStyles.labelLargeBluegray400,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Blue Loyal Party",
                  style: CustomTextStyles.titleSmallBlack90001,
                ),
                SizedBox(height: 5.v),
                Text(
                  "19 : 35 | Latuna Beach",
                  style: CustomTextStyles.labelLargeBluegray400,
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

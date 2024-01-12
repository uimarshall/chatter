import 'package:chatter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommentlistItemWidget extends StatelessWidget {
  const CommentlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgEllipse21,
              height: 50.adaptSize,
              width: 50.adaptSize,
              radius: BorderRadius.circular(
                25.h,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 9.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Rizal Reynaldhi",
                    style: CustomTextStyles.titleMediumGray600,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "35 minutes ago",
                    style: CustomTextStyles.labelMediumGray500,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 18.v),
        SizedBox(
          width: 382.h,
          child: Text(
            "Most people never appreciate what he does but instead they see the point of his fault for their own pleasure. ",
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLargeBluegray700.copyWith(
              height: 1.50,
            ),
          ),
        ),
        SizedBox(height: 17.v),
        Text(
          "Reply",
          style: CustomTextStyles.titleMediumDeeppurpleA200SemiBold_1,
        ),
      ],
    );
  }
}

import 'package:chatter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NinetysevenlistItemWidget extends StatelessWidget {
  const NinetysevenlistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgTrashBlue500,
        height: 50.adaptSize,
        width: 50.adaptSize,
      ),
    );
  }
}

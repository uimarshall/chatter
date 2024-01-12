import 'package:chatter/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConversionsItemWidget extends StatelessWidget {
  const ConversionsItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.adaptSize,
      width: 40.adaptSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.h,
        ),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgEllipse940x40,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

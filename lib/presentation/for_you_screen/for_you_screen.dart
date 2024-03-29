import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:chatter/widgets/app_bar/appbar_subtitle.dart';
import 'package:chatter/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:chatter/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chatter/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ForYouScreen extends StatelessWidget {
  const ForYouScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.primary,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgForYou,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 5.v),
                _buildAppBar(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 185.v,
      leadingWidth: 66.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgEllipse9,
        margin: EdgeInsets.only(
          left: 16.h,
          bottom: 135.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(
          left: 24.h,
          top: 3.v,
          bottom: 134.v,
        ),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "Lucas Anna ",
            ),
            SizedBox(height: 5.v),
            AppbarSubtitleThree(
              text: "35:16",
              margin: EdgeInsets.only(right: 76.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClosePrimary,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 148.v),
        ),
      ],
      styleType: Style.bgGradientnameblack90001opacity05nameblack90001opacity05,
    );
  }
}

import '../profile_page/widgets/profilelist_item_widget.dart';
import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chatter/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                          onTap: () {
                            onTapProfileDetails(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 16.h),
                              child: Row(children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse1480x80,
                                    height: 80.adaptSize,
                                    width: 80.adaptSize,
                                    radius: BorderRadius.circular(40.h)),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 24.h, top: 11.v, bottom: 4.v),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text("Rosalia",
                                              style: CustomTextStyles
                                                  .headlineLargeBlack90001),
                                          SizedBox(height: 8.v),
                                          Text("@rose23",
                                              style: CustomTextStyles
                                                  .bodyMediumBluegray400)
                                        ]))
                              ])))),
                  SizedBox(height: 26.v),
                  _buildCountsRow(context),
                  SizedBox(height: 26.v),
                  _buildMenuRow(context),
                  SizedBox(height: 24.v),
                  _buildProfileList(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(actions: [
      AppbarTrailingImage(
          imagePath: ImageConstant.imgVectorDeepPurpleA200,
          margin: EdgeInsets.symmetric(horizontal: 18.h, vertical: 20.v))
    ]);
  }

  /// Section Widget
  Widget _buildCountsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Text("Post", style: CustomTextStyles.titleLargeGray500),
            SizedBox(height: 10.v),
            Text("75", style: CustomTextStyles.titleLargeDeeppurpleA200)
          ]),
          _buildFollowersColumn(context,
              followersText: "Following", zipcodeText: "3400"),
          _buildFollowersColumn(context,
              followersText: "Followers", zipcodeText: "6500")
        ]));
  }

  /// Section Widget
  Widget _buildMenuRow(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 40.h, vertical: 16.v),
        decoration: AppDecoration.fillGray,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMenu,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgPlayCircleOutline,
              height: 40.adaptSize,
              width: 40.adaptSize),
          CustomImageView(
              imagePath: ImageConstant.imgQueueMusic,
              height: 40.adaptSize,
              width: 40.adaptSize)
        ]));
  }

  /// Section Widget
  Widget _buildProfileList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 16.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return ProfilelistItemWidget();
            }));
  }

  /// Common widget
  Widget _buildFollowersColumn(
    BuildContext context, {
    required String followersText,
    required String zipcodeText,
  }) {
    return Column(children: [
      Text(followersText,
          style: CustomTextStyles.titleLargeGray500
              .copyWith(color: appTheme.gray500)),
      SizedBox(height: 10.v),
      Text(zipcodeText,
          style: CustomTextStyles.titleLargeDeeppurpleA200
              .copyWith(color: appTheme.deepPurpleA200))
    ]);
  }

  /// Navigates to the detailedProfileScreen when the action is triggered.
  onTapProfileDetails(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailedProfileScreen);
  }
}

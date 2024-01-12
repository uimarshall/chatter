import '../account_details_screen/widgets/fortysix_item_widget.dart';
import '../account_details_screen/widgets/widget_item_widget.dart';
import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/app_bar/appbar_leading_image.dart';
import 'package:chatter/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chatter/widgets/app_bar/custom_app_bar.dart';
import 'package:chatter/widgets/custom_icon_button.dart';
import 'package:chatter/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class AccountDetailsScreen extends StatelessWidget {
  const AccountDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildProfileHeader(context),
                  SizedBox(height: 26.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: _buildAccountDetails(context)))
                ]))));
  }

  /// Section Widget
  Widget _buildProfileHeader(BuildContext context) {
    return SizedBox(
        height: 273.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.topCenter, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3809273x414,
              height: 273.v,
              width: 414.h,
              alignment: Alignment.center),
          Align(
              alignment: Alignment.topCenter,
              child: Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 13.v, right: 16.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    CustomAppBar(
                        height: 24.v,
                        leadingWidth: 40.h,
                        leading: AppbarLeadingImage(
                            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
                            margin: EdgeInsets.only(left: 16.h),
                            onTap: () {
                              onTapArrowBack(context);
                            }),
                        actions: [
                          AppbarTrailingImage(
                              imagePath: ImageConstant.imgSettings,
                              margin: EdgeInsets.symmetric(horizontal: 16.h))
                        ]),
                    SizedBox(height: 161.v),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse11,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(25.h)),
                      Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 2.v),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Rosalia",
                                    style: CustomTextStyles.titleLargePrimary),
                                SizedBox(height: 6.v),
                                Text("@rose23",
                                    style: theme.textTheme.bodyMedium)
                              ])),
                      Spacer(),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 9.v),
                          child: CustomIconButton(
                              height: 33.adaptSize,
                              width: 33.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              decoration: IconButtonStyleHelper.outlinePrimary,
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgPersonAddAlt1Primary))),
                      CustomOutlinedButton(
                          width: 76.h,
                          text: "Follow",
                          margin: EdgeInsets.only(
                              left: 24.h, top: 9.v, bottom: 9.v),
                          buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary)
                    ])
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildAbout(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("About me", style: CustomTextStyles.titleLargeBlack900),
          SizedBox(height: 14.v),
          SizedBox(
              width: 380.h,
              child: Text(
                  "Introduce my name is lewandhosky i am a bodybuilder i have been for 10 years i am a trainer and also the owner of the gym in my place i have more than 50 students and from one of them have won the national championship of bodybuilder.",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeBluegray700
                      .copyWith(height: 1.50)))
        ]));
  }

  /// Section Widget
  Widget _buildFriends(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  Text("Friends", style: CustomTextStyles.titleLargeBlack900)),
          SizedBox(height: 13.v),
          SizedBox(
              height: 64.v,
              child: ListView.separated(
                  padding: EdgeInsets.only(left: 2.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 16.h);
                  },
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return WidgetItemWidget();
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildAccountDetails(BuildContext context) {
    return Column(children: [
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(children: [
              Text("Post", style: CustomTextStyles.titleLargeGray500),
              SizedBox(height: 10.v),
              Text("75", style: CustomTextStyles.titleLargeDeeppurpleA200)
            ]),
            _buildFollowers(context,
                followersText: "Following", zipcodeText: "3400"),
            _buildFollowers(context,
                followersText: "Followers", zipcodeText: "6500")
          ])),
      SizedBox(height: 20.v),
      Divider(),
      SizedBox(height: 26.v),
      _buildAbout(context),
      SizedBox(height: 20.v),
      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child:
                  Text("Photos", style: CustomTextStyles.titleLargeBlack900))),
      SizedBox(height: 12.v),
      SizedBox(
          height: 161.v,
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 16.h);
              },
              itemCount: 3,
              itemBuilder: (context, index) {
                return FortysixItemWidget();
              })),
      SizedBox(height: 21.v),
      _buildFriends(context)
    ]);
  }

  /// Common widget
  Widget _buildFollowers(
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

  /// Navigates back to the previous screen.
  onTapArrowBack(BuildContext context) {
    Navigator.pop(context);
  }
}

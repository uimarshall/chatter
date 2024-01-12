import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/custom_elevated_button.dart';
import 'package:chatter/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurpleA200,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildStackView(context),
                  SizedBox(height: 62.v),
                  _buildInfoTitle(context),
                  SizedBox(height: 33.v),
                  _buildSocial(context),
                  SizedBox(height: 50.v),
                  CustomElevatedButton(
                      text: "Log In",
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      onPressed: () {
                        onTapLogIn(context);
                      }),
                  SizedBox(height: 28.v),
                  CustomOutlinedButton(
                      height: 50.v,
                      text: "Sign Up",
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      buttonStyle: CustomButtonStyles.outlinePrimary,
                      buttonTextStyle: CustomTextStyles.titleMedium18,
                      onPressed: () {
                        onTapSignUp(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildStackView(BuildContext context) {
    return SizedBox(
        height: 243.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomRight, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3800,
              height: 158.v,
              width: 122.h,
              radius: BorderRadius.circular(12.h),
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(bottom: 10.v)),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3801,
              height: 158.v,
              width: 8.h,
              radius: BorderRadius.circular(4.h),
              alignment: Alignment.bottomRight),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 243.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(0.5, 0),
                          end: Alignment(0.5, 1),
                          colors: [
                        theme.colorScheme.primary.withOpacity(0),
                        appTheme.deepPurpleA200
                      ])))),
          Align(
              alignment: Alignment.topLeft,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3799,
                    height: 158.v,
                    width: 8.h,
                    radius: BorderRadius.circular(4.h),
                    margin: EdgeInsets.only(top: 32.v, bottom: 6.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3799158x122,
                    height: 158.v,
                    width: 122.h,
                    radius: BorderRadius.circular(12.h),
                    margin:
                        EdgeInsets.only(left: 8.h, top: 13.v, bottom: 25.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3803,
                    height: 67.v,
                    width: 122.h,
                    radius: BorderRadius.circular(12.h),
                    margin: EdgeInsets.only(left: 8.h, bottom: 129.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3802,
                    height: 158.v,
                    width: 122.h,
                    radius: BorderRadius.circular(12.h),
                    margin: EdgeInsets.only(left: 8.h, top: 38.v))
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildInfoTitle(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              width: 343.h,
              margin: EdgeInsets.only(right: 38.h),
              child: Text("Find new friend\nconnection or partner",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.headlineLargePrimary
                      .copyWith(height: 1.50))),
          SizedBox(height: 10.v),
          Container(
              width: 372.h,
              margin: EdgeInsets.only(right: 9.h),
              child: Text(
                  "With billions of people in the world we make it easy for you to get to know many new people for you who are looking for new friends partner or connections",
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleMedium!.copyWith(height: 1.50)))
        ]));
  }

  /// Section Widget
  Widget _buildSocial(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 141.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 14.h),
              child: Text("Or login with",
                  style: CustomTextStyles.bodyLargePrimary)),
          SizedBox(height: 19.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: CustomImageView(
                    imagePath: ImageConstant.imgFacebook,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(right: 15.h))),
            Expanded(
                child: CustomImageView(
                    imagePath: ImageConstant.imgTrash,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(horizontal: 15.h))),
            Expanded(
                child: CustomImageView(
                    imagePath: ImageConstant.imgGoogle,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.only(left: 15.h)))
          ])
        ]));
  }

  /// Navigates to the logInScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.logInScreen);
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignUp(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}

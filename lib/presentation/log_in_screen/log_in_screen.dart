import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/app_bar/appbar_leading_image.dart';
import 'package:chatter/widgets/app_bar/custom_app_bar.dart';
import 'package:chatter/widgets/custom_elevated_button.dart';
import 'package:chatter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurpleA200,
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 16.h, top: 79.v, right: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  _buildPageTitle(context),
                                  SizedBox(height: 33.v),
                                  CustomTextFormField(
                                      controller: emailController,
                                      hintText: "Email Id",
                                      textInputType:
                                          TextInputType.emailAddress),
                                  SizedBox(height: 24.v),
                                  CustomTextFormField(
                                      controller: passwordController,
                                      hintText: "Password",
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              30.h, 13.v, 16.h, 13.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgAntdesigneyeinvisiblefilled,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize)),
                                      suffixConstraints:
                                          BoxConstraints(maxHeight: 50.v),
                                      obscureText: true,
                                      contentPadding: EdgeInsets.only(
                                          left: 16.h, top: 15.v, bottom: 15.v)),
                                  SizedBox(height: 27.v),
                                  GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotPassword(context);
                                      },
                                      child: Text("Forgot Password?",
                                          style: CustomTextStyles
                                              .bodyLargePrimary)),
                                  SizedBox(height: 30.v),
                                  CustomElevatedButton(
                                      text: "Log In",
                                      buttonStyle:
                                          CustomButtonStyles.fillPrimary),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 47.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.fromLTRB(26.h, 10.v, 364.h, 10.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPageTitle(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Welcome to Social", style: CustomTextStyles.headlineLargePrimary),
      SizedBox(height: 12.v),
      Text("Please enter your email address and password. ",
          style: CustomTextStyles.bodyLargePrimary)
    ]);
  }

  /// Navigates to the forgotPasswordScreen when the action is triggered.
  onTapTxtForgotPassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }
}

import '../page_view_screen/widgets/conversions_item_widget.dart';
import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/app_bar/appbar_leading_image.dart';
import 'package:chatter/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chatter/widgets/app_bar/custom_app_bar.dart';
import 'package:chatter/widgets/custom_elevated_button.dart';
import 'package:chatter/widgets/custom_icon_button.dart';
import 'package:chatter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PageViewScreen extends StatelessWidget {
  PageViewScreen({Key? key}) : super(key: key);

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: SizeUtils.width,
                height: SizeUtils.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgPageView),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 13.v),
                        decoration: AppDecoration
                            .gradientOnPrimaryContainerToBlueGray
                            .copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder15),
                        child:
                            Column(mainAxisSize: MainAxisSize.min, children: [
                          _buildAppBar(context),
                          Spacer(),
                          SizedBox(height: 26.v),
                          _buildStreamDetails(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 24.v,
        leadingWidth: 40.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBack,
            margin: EdgeInsets.only(left: 16.h),
            onTap: () {
              onTapArrowBack(context);
            }),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgQuestion,
              margin: EdgeInsets.only(left: 16.h)),
          AppbarTrailingImage(
              imagePath: ImageConstant.imgGrid,
              margin: EdgeInsets.only(left: 24.h, right: 16.h))
        ]);
  }

  /// Section Widget
  Widget _buildPostDescription(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomElevatedButton(
          height: 28.v,
          width: 71.h,
          text: "4 / 6",
          buttonStyle: CustomButtonStyles.fillDeepPurpleATL14,
          buttonTextStyle: CustomTextStyles.titleSmallPrimary),
      SizedBox(height: 22.v),
      Container(
          width: 300.h,
          margin: EdgeInsets.only(right: 82.h),
          child: Text("Haliford Luxury\nHotel",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.displayMedium)),
      SizedBox(height: 23.v),
      SizedBox(
          width: 381.h,
          child: Text(
              "halford hotel is a luxury hotel that has 5 stars, this hotel is the most comfortable hotel in this area, very complete facilities make the halford hotel famous in the area, affordable prices can make tourists feel happy",
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(height: 1.50)))
    ]);
  }

  /// Section Widget
  Widget _buildConversions(BuildContext context) {
    return SizedBox(
        height: 40.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 13.h);
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return ConversionsItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildStreamDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          _buildPostDescription(context),
          SizedBox(height: 98.v),
          _buildConversions(context),
          SizedBox(height: 40.v),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: CustomTextFormField(
                    controller: commentController,
                    hintText: "Write a comment",
                    hintStyle: CustomTextStyles.titleSmallPrimary,
                    textInputAction: TextInputAction.done,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
                    borderDecoration: TextFormFieldStyleHelper.fillGray,
                    fillColor: appTheme.gray600)),
            Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: CustomIconButton(
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    padding: EdgeInsets.all(13.h),
                    decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
                    child:
                        CustomImageView(imagePath: ImageConstant.imgGroup9143)))
          ])
        ]));
  }

  /// Navigates back to the previous screen.
  onTapArrowBack(BuildContext context) {
    Navigator.pop(context);
  }
}

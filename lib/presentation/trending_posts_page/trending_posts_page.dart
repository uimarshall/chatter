import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TrendingPostsPage extends StatefulWidget {
  const TrendingPostsPage({Key? key}) : super(key: key);

  @override
  TrendingPostsPageState createState() => TrendingPostsPageState();
}

class TrendingPostsPageState extends State<TrendingPostsPage>
    with AutomaticKeepAliveClientMixin<TrendingPostsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillPrimary,
                child: Column(children: [
                  SizedBox(height: 17.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildPostItemColumn2(context),
                            Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: Column(children: [
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(vertical: 16.v),
                                      decoration: AppDecoration.outlineBlack
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder15),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: _buildFrameRow(context,
                                                    rizalReynaldhi:
                                                        "Rizal Reynaldhi",
                                                    duration:
                                                        "35 minutes ago")),
                                            SizedBox(height: 8.v),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.img32116x183,
                                                height: 116.v,
                                                width: 183.h),
                                            SizedBox(height: 9.v),
                                            Container(
                                                width: 141.h,
                                                margin:
                                                    EdgeInsets.only(left: 16.h),
                                                child: Text(
                                                    "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true",
                                                    maxLines: 6,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: theme
                                                        .textTheme.bodySmall!
                                                        .copyWith(
                                                            height: 1.50))),
                                            SizedBox(height: 17.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: _buildBaliRow(context,
                                                    text1: "#Bali",
                                                    text2: "#dreams")),
                                            SizedBox(height: 16.v),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 16.h),
                                                child: _buildFavoriteRow(
                                                    context,
                                                    zipcodeText: "2200",
                                                    eightHundredText: "800"))
                                          ])),
                                  SizedBox(height: 16.v),
                                  _buildPostItemColumn(context,
                                      userName: "Rizal Reynaldhi",
                                      timeAgo: "35 minutes ago",
                                      description:
                                          "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true",
                                      hashtag1: "#Bali",
                                      hashtag2: "#dreams",
                                      zipcode: "2200",
                                      followersCount: "800")
                                ]))
                          ]))
                ]))));
  }

  /// Section Widget
  Widget _buildPostItemColumn2(BuildContext context) {
    return Column(children: [
      _buildPostItemColumn(context,
          userName: "Rizal Reynaldhi",
          timeAgo: "35 minutes ago",
          description:
              "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true",
          hashtag1: "#Bali",
          hashtag2: "#dreams",
          zipcode: "2200",
          followersCount: "800"),
      SizedBox(height: 16.v),
      Container(
          padding: EdgeInsets.symmetric(vertical: 16.v),
          decoration: AppDecoration.outlineBlack
              .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
          child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildFrameRow(context,
                        rizalReynaldhi: "Rizal Reynaldhi",
                        duration: "35 minutes ago")),
                SizedBox(height: 8.v),
                SizedBox(
                    height: 116.v,
                    width: 183.h,
                    child: Stack(alignment: Alignment.center, children: [
                      CustomImageView(
                          imagePath: ImageConstant.img32,
                          height: 116.v,
                          width: 183.h,
                          alignment: Alignment.center),
                      CustomIconButton(
                          height: 42.v,
                          width: 41.h,
                          alignment: Alignment.center,
                          child: CustomImageView(
                              imagePath: ImageConstant.imgOverflowMenu))
                    ])),
                SizedBox(height: 9.v),
                Container(
                    width: 141.h,
                    margin: EdgeInsets.only(left: 16.h),
                    child: Text(
                        "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream will come true",
                        maxLines: 6,
                        overflow: TextOverflow.ellipsis,
                        style:
                            theme.textTheme.bodySmall!.copyWith(height: 1.50))),
                SizedBox(height: 17.v),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildBaliRow(context,
                        text1: "#Bali", text2: "#dreams")),
                SizedBox(height: 16.v),
                Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: _buildFavoriteRow(context,
                        zipcodeText: "2200", eightHundredText: "800"))
              ]))
    ]);
  }

  /// Common widget
  Widget _buildFrameRow(
    BuildContext context, {
    required String rizalReynaldhi,
    required String duration,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgEllipse2135x35,
          height: 35.adaptSize,
          width: 35.adaptSize,
          radius: BorderRadius.circular(17.h)),
      Padding(
          padding: EdgeInsets.only(left: 10.h, top: 2.v, bottom: 2.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(rizalReynaldhi,
                style: CustomTextStyles.labelLargePrimary
                    .copyWith(color: theme.colorScheme.primary)),
            SizedBox(height: 2.v),
            Text(duration,
                style: CustomTextStyles.labelMediumBluegray100
                    .copyWith(color: appTheme.blueGray100))
          ]))
    ]);
  }

  /// Common widget
  Widget _buildBaliRow(
    BuildContext context, {
    required String text1,
    required String text2,
  }) {
    return Row(children: [
      Text(text1,
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.primary)),
      Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(text2,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Common widget
  Widget _buildFavoriteRow(
    BuildContext context, {
    required String zipcodeText,
    required String eightHundredText,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgFavorite,
          height: 17.v,
          width: 19.h,
          margin: EdgeInsets.only(top: 1.v)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, top: 1.v),
          child: Text(zipcodeText,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.primary))),
      CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 18.v,
          width: 19.h,
          margin: EdgeInsets.only(left: 29.h)),
      Padding(
          padding: EdgeInsets.only(left: 8.h, top: 3.v),
          child: Text(eightHundredText,
              style: theme.textTheme.bodySmall!
                  .copyWith(color: theme.colorScheme.primary)))
    ]);
  }

  /// Common widget
  Widget _buildPostItemColumn(
    BuildContext context, {
    required String userName,
    required String timeAgo,
    required String description,
    required String hashtag1,
    required String hashtag2,
    required String zipcode,
    required String followersCount,
  }) {
    return Container(
        width: 183.h,
        padding: EdgeInsets.all(16.h),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse2135x35,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    radius: BorderRadius.circular(17.h)),
                Padding(
                    padding: EdgeInsets.only(left: 10.h, top: 2.v, bottom: 2.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(userName,
                              style: CustomTextStyles.labelLargePrimary
                                  .copyWith(color: theme.colorScheme.primary)),
                          SizedBox(height: 2.v),
                          Text(timeAgo,
                              style: CustomTextStyles.labelMediumBluegray100
                                  .copyWith(color: appTheme.blueGray100))
                        ]))
              ]),
              SizedBox(height: 9.v),
              SizedBox(
                  width: 141.h,
                  child: Text(description,
                      maxLines: 6,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!.copyWith(
                          color: theme.colorScheme.primary, height: 1.50))),
              SizedBox(height: 13.v),
              Row(children: [
                Text(hashtag1,
                    style: theme.textTheme.bodyMedium!
                        .copyWith(color: theme.colorScheme.primary)),
                Padding(
                    padding: EdgeInsets.only(left: 24.h),
                    child: Text(hashtag2,
                        style: theme.textTheme.bodyMedium!
                            .copyWith(color: theme.colorScheme.primary)))
              ]),
              SizedBox(height: 16.v),
              Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 17.v,
                    width: 19.h,
                    margin: EdgeInsets.only(top: 1.v)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 1.v),
                    child: Text(zipcode,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: theme.colorScheme.primary))),
                CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 18.v,
                    width: 19.h,
                    margin: EdgeInsets.only(left: 29.h)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h, top: 3.v),
                    child: Text(followersCount,
                        style: theme.textTheme.bodySmall!
                            .copyWith(color: theme.colorScheme.primary)))
              ])
            ]));
  }
}

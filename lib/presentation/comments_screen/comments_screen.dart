import '../comments_screen/widgets/commentlist_item_widget.dart';
import 'package:chatter/core/app_export.dart';
import 'package:chatter/widgets/app_bar/appbar_leading_image.dart';
import 'package:chatter/widgets/app_bar/custom_app_bar.dart';
import 'package:chatter/widgets/custom_icon_button.dart';
import 'package:chatter/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class CommentsScreen extends StatelessWidget {
  CommentsScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 21.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Comments",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 21.v),
              _buildCommentList(context),
            ],
          ),
        ),
        bottomNavigationBar: _buildCommentBox(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(19.h, 16.v, 377.h, 16.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentList(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0.v),
          child: SizedBox(
            width: 382.h,
            child: Divider(
              height: 2.v,
              thickness: 2.v,
              color: theme.colorScheme.secondaryContainer,
            ),
          ),
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        return CommentlistItemWidget();
      },
    );
  }

  /// Section Widget
  Widget _buildCommentBox(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 39.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: commentController,
              hintText: "Write a comment",
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillSecondaryContainer,
              fillColor: theme.colorScheme.secondaryContainer,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup9143,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import '../trending_tab_container_screen/widgets/stories_item_widget.dart';
import 'package:chatter/core/app_export.dart';
import 'package:chatter/presentation/messages_page/messages_page.dart';
import 'package:chatter/presentation/notifications_page/notifications_page.dart';
import 'package:chatter/presentation/profile_page/profile_page.dart';
import 'package:chatter/presentation/trending_page/trending_page.dart';
import 'package:chatter/widgets/app_bar/appbar_title_searchview.dart';
import 'package:chatter/widgets/app_bar/appbar_trailing_image.dart';
import 'package:chatter/widgets/app_bar/custom_app_bar.dart';
import 'package:chatter/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class TrendingTabContainerScreen extends StatefulWidget {
  const TrendingTabContainerScreen({Key? key}) : super(key: key);

  @override
  TrendingTabContainerScreenState createState() =>
      TrendingTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class TrendingTabContainerScreenState extends State<TrendingTabContainerScreen>
    with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 25.v),
                  _buildStories(context),
                  SizedBox(height: 33.v),
                  _buildTabview(context),
                  Expanded(
                      child: SizedBox(
                          height: 544.v,
                          child: TabBarView(
                              controller: tabviewController,
                              children: [
                                TrendingPage(),
                                TrendingPage(),
                                TrendingPage(),
                                TrendingPage()
                              ])))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "Search",
            controller: searchController),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgPlay40x40,
              margin: EdgeInsets.fromLTRB(16.h, 5.v, 19.h, 5.v))
        ]);
  }

  /// Section Widget
  Widget _buildStories(BuildContext context) {
    return SizedBox(
        height: 89.v,
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 5,
            itemBuilder: (context, index) {
              return StoriesItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 30.v,
        width: 398.h,
        child: TabBar(
            controller: tabviewController,
            isScrollable: true,
            labelColor: appTheme.deepPurpleA200,
            unselectedLabelColor: appTheme.indigo100,
            tabs: [
              Tab(child: Text("Trending")),
              Tab(child: Text("Latest")),
              Tab(child: Text("Discover")),
              Tab(child: Text("Daily New"))
            ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Streams:
        return "/";
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}

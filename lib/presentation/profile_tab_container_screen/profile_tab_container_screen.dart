import 'notifier/profile_tab_container_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/presentation/profile_page/profile_page.dart';
import 'package:app3/widgets/app_bar/appbar_leading_image.dart';
import 'package:app3/widgets/app_bar/appbar_title.dart';
import 'package:app3/widgets/app_bar/appbar_title_image.dart';
import 'package:app3/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ProfileTabContainerScreen extends ConsumerStatefulWidget {
  const ProfileTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ProfileTabContainerScreenState createState() =>
      ProfileTabContainerScreenState();
}

class ProfileTabContainerScreenState
    extends ConsumerState<ProfileTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 26.v),
              CustomImageView(
                imagePath: ImageConstant.imgProfilePic,
                height: 150.adaptSize,
                width: 150.adaptSize,
                radius: BorderRadius.circular(
                  75.h,
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                "lbl_afreen_khan".tr,
                style: theme.textTheme.displaySmall,
              ),
              Opacity(
                opacity: 0.9,
                child: Text(
                  "lbl_lucknow_india".tr,
                  style: AppTextStyle22.titleLargeOnPrimaryContainer,
                ),
              ),
              SizedBox(height: 32.v),
              _buildTabview(context),
              _buildTabBarView(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgHamburgerOnprimarycontainer,
        margin: EdgeInsets.only(
          left: 25.h,
          top: 19.v,
          bottom: 18.v,
        ),
      ),
      centerTitle: true,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgLogoOnprimarycontainer49x43,
      ),
      actions: [
        AppbarTitle(
          text: "lbl_edit".tr,
          margin: EdgeInsets.fromLTRB(29.h, 18.v, 29.h, 19.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 35.v,
      width: 372.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        unselectedLabelColor: appTheme.blueGray80087,
        indicatorColor: appTheme.blueGray80087,
        tabs: [
          Tab(
            child: Text(
              "lbl_stats".tr,
            ),
          ),
          Tab(
            child: Opacity(
              opacity: 0.5,
              child: Text(
                "lbl_achievements".tr,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarView(BuildContext context) {
    return SizedBox(
      height: 375.v,
      child: TabBarView(
        controller: tabviewController,
        children: [
          ProfilePage(),
          ProfilePage(),
        ],
      ),
    );
  }
}

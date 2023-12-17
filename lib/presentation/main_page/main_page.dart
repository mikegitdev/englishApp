import 'package:dot_navigation_bar/dot_navigation_bar.dart';

import '../main_page/widgets/meditation101_item_widget.dart';
import '../main_page/widgets/welcomebackafreen_item_widget.dart';
import 'models/meditation101_item_model.dart';
import 'models/welcomebackafreen_item_model.dart';
import 'notifier/main_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MainPage extends ConsumerStatefulWidget {
  const MainPage({Key? key})
      : super(
          key: key,
        );

  @override
  MainPageState createState() => MainPageState();
}

class MainPageState extends ConsumerState<MainPage>
    with AutomaticKeepAliveClientMixin<MainPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 32.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "msg_welcome_back_afreen".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text(
                          "msg_how_are_you_feeling".tr,
                          style: AppTextStyle22
                              .titleLargeOnPrimaryContainerRegular22,
                        ),
                      ),
                    ),
                    SizedBox(height: 25.v),
                    _buildWelcomeBackAfreen(context),
                    SizedBox(height: 22.v),
                    _buildMeditation101(context),
                    SizedBox(height: 42.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgNav,
                      height: 30.v,
                      width: 226.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        // bottomNavigationBar: Padding(
        //   padding: EdgeInsets.only(bottom: 10),
        //   child: DotNavigationBar(
        //     margin: EdgeInsets.only(left: 10, right: 10),
        //     currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        //     dotIndicatorColor: Colors.white,
        //     unselectedItemColor: Colors.grey[300],
        //     splashBorderRadius: 50,
        //     // enableFloatingNavBar: false,
        //     onTap: _handleIndexChanged,
        //     items: [
        //       /// Home
        //       DotNavigationBarItem(
        //         icon: Icon(Icons.home),
        //         selectedColor: Color(0xff73544C),
        //       ),

        //       /// Likes
        //       DotNavigationBarItem(
        //         icon: Icon(Icons.favorite),
        //         selectedColor: Color(0xff73544C),
        //       ),

        //       /// Search
        //       DotNavigationBarItem(
        //         icon: Icon(Icons.search),
        //         selectedColor: Color(0xff73544C),
        //       ),

        //       /// Profile
        //       DotNavigationBarItem(
        //         icon: Icon(Icons.person),
        //         selectedColor: Color(0xff73544C),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeBackAfreen(BuildContext context) {
    return SizedBox(
      height: 85.v,
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                width: 25.h,
              );
            },
            itemCount: ref
                    .watch(mainNotifier)
                    .mainModelObj
                    ?.welcomebackafreenItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              WelcomebackafreenItemModel model = ref
                      .watch(mainNotifier)
                      .mainModelObj
                      ?.welcomebackafreenItemList[index] ??
                  WelcomebackafreenItemModel();
              return WelcomebackafreenItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildMeditation101(BuildContext context) {
    return Consumer(
      builder: (context, ref, _) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 26.v,
            );
          },
          itemCount: ref
                  .watch(mainNotifier)
                  .mainModelObj
                  ?.meditation101ItemList
                  .length ??
              0,
          itemBuilder: (context, index) {
            Meditation101ItemModel model = ref
                    .watch(mainNotifier)
                    .mainModelObj
                    ?.meditation101ItemList[index] ??
                Meditation101ItemModel();
            return Meditation101ItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}

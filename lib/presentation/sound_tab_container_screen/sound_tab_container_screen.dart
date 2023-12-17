import 'notifier/sound_tab_container_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/presentation/sound_page/sound_page.dart';
import 'package:flutter/material.dart';

class SoundTabContainerScreen extends ConsumerStatefulWidget {
  const SoundTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SoundTabContainerScreenState createState() => SoundTabContainerScreenState();
}

class SoundTabContainerScreenState
    extends ConsumerState<SoundTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 59.v),
              _buildTabview(context),
              SizedBox(
                height: 704.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    SoundPage(),
                    SoundPage(),
                    SoundPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 49.v,
      width: 326.h,
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        tabs: [
          Tab(
            child: CustomImageView(
              imagePath: ImageConstant.imgHamburger,
              height: 18.v,
              width: 22.h,
            ),
          ),
          Tab(
            child: CustomImageView(
              imagePath: ImageConstant.imgLogoOnprimarycontainer,
              height: 49.v,
              width: 43.h,
            ),
          ),
          Tab(
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse2,
              height: 35.adaptSize,
              width: 35.adaptSize,
              radius: BorderRadius.circular(
                17.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

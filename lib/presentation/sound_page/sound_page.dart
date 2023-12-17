import 'notifier/sound_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SoundPage extends ConsumerStatefulWidget {
  const SoundPage({Key? key})
      : super(
          key: key,
        );

  @override
  SoundPageState createState() => SoundPageState();
}

class SoundPageState extends ConsumerState<SoundPage>
    with AutomaticKeepAliveClientMixin<SoundPage> {
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
              SizedBox(height: 47.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 33.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAlbumArt,
                      height: 250.adaptSize,
                      width: 250.adaptSize,
                      radius: BorderRadius.circular(
                        125.h,
                      ),
                    ),
                    SizedBox(height: 31.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 35.h),
                        child: Text(
                          "lbl_painting_forest".tr,
                          style: theme.textTheme.displaySmall,
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Text(
                        "msg_by_painting_with".tr,
                        style: AppTextStyle22.headlineSmallOnPrimaryContainer,
                      ),
                    ),
                    SizedBox(height: 48.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgTime,
                      height: 50.v,
                      width: 309.h,
                    ),
                    SizedBox(height: 26.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 75.v,
                      width: 303.h,
                    ),
                    SizedBox(height: 39.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgNavOnprimarycontainer,
                      height: 25.v,
                      width: 226.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

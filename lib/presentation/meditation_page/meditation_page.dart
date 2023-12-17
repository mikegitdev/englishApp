import 'notifier/meditation_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MeditationPage extends ConsumerStatefulWidget {
  const MeditationPage({Key? key})
      : super(
          key: key,
        );

  @override
  MeditationPageState createState() => MeditationPageState();
}

class MeditationPageState extends ConsumerState<MeditationPage>
    with AutomaticKeepAliveClientMixin<MeditationPage> {
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
              SizedBox(height: 49.v),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 41.h),
                  child: Column(
                    children: [
                      Text(
                        "lbl_meditation".tr,
                        style: theme.textTheme.displaySmall,
                      ),
                      Opacity(
                        opacity: 0.5,
                        child: SizedBox(
                          width: 293.h,
                          child: Text(
                            "msg_guided_by_a_short".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: AppTextStyle22
                                .titleLargeOnPrimaryContainerRegular,
                          ),
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        child: Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgCharacterMeditating,
                              height: 217.v,
                              width: 283.h,
                            ),
                            SizedBox(height: 29.v),
                            Text(
                              "lbl_45_00".tr,
                              style: AppTextStyle22.displaySmallAlegreyaSans,
                            ),
                            SizedBox(height: 6.v),
                            CustomElevatedButton(
                              width: 186.h,
                              text: "lbl_start_now".tr,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 33.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Opacity(
                              opacity: 0.5,
                              child: CustomImageView(
                                imagePath: ImageConstant
                                    .imgLogoOnprimarycontainer49x43,
                                height: 20.v,
                                width: 19.h,
                              ),
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgSounds,
                                height: 20.v,
                                width: 21.h,
                              ),
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgLock,
                                height: 20.v,
                                width: 15.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

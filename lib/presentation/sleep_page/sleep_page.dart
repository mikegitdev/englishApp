import '../sleep_page/widgets/sleepcomponent_item_widget.dart';
import 'models/sleepcomponent_item_model.dart';
import 'notifier/sleep_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class SleepPage extends ConsumerStatefulWidget {
  const SleepPage({Key? key})
      : super(
          key: key,
        );

  @override
  SleepPageState createState() => SleepPageState();
}

class SleepPageState extends ConsumerState<SleepPage>
    with AutomaticKeepAliveClientMixin<SleepPage> {
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
              SizedBox(height: 53.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.h),
                child: Column(
                  children: [
                    _buildSleepComponent(context),
                    SizedBox(height: 32.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "lbl_bedtime".tr,
                        style: theme.textTheme.displaySmall,
                      ),
                    ),
                    SizedBox(height: 32.v),
                    _buildChart(context),
                    SizedBox(height: 64.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgNavOnprimarycontainer,
                      height: 20.v,
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

  /// Section Widget
  Widget _buildSleepComponent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_sleep_session".tr,
          style: theme.textTheme.displaySmall,
        ),
        SizedBox(height: 19.v),
        SizedBox(
          height: 163.v,
          child: Consumer(
            builder: (context, ref, _) {
              return ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (
                  context,
                  index,
                ) {
                  return SizedBox(
                    width: 13.h,
                  );
                },
                itemCount: ref
                        .watch(sleepNotifier)
                        .sleepModelObj
                        ?.sleepcomponentItemList
                        .length ??
                    0,
                itemBuilder: (context, index) {
                  SleepcomponentItemModel model = ref
                          .watch(sleepNotifier)
                          .sleepModelObj
                          ?.sleepcomponentItemList[index] ??
                      SleepcomponentItemModel();
                  return SleepcomponentItemWidget(
                    model,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildChart(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 3.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 15.h),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "lbl_800".tr,
                      style: AppTextStyle22.bodySmallSFProTextGray500,
                    ),
                    SizedBox(height: 22.v),
                    Text(
                      "lbl_600".tr,
                      style: AppTextStyle22.bodySmallSFProTextGray500,
                    ),
                    SizedBox(height: 22.v),
                    Text(
                      "lbl_400".tr,
                      style: AppTextStyle22.bodySmallSFProTextGray500,
                    ),
                    SizedBox(height: 22.v),
                    Text(
                      "lbl_200".tr,
                      style: AppTextStyle22.bodySmallSFProTextGray500,
                    ),
                    SizedBox(height: 22.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 1.h),
                        child: Text(
                          "lbl_0".tr,
                          style: AppTextStyle22.bodySmallSFProTextGray500,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 154.v,
                  width: 272.h,
                  margin: EdgeInsets.only(
                    left: 9.h,
                    top: 3.v,
                    bottom: 3.v,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGraphLines,
                        height: 154.v,
                        width: 272.h,
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGraphLinesLightGreen300,
                        height: 56.v,
                        width: 257.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(bottom: 37.v),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: 17.h,
                            bottom: 3.v,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.all(11.h),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: fs.Svg(
                                      ImageConstant.imgTooltip,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "lbl_27_632".tr,
                                      style: AppTextStyle22
                                          .titleSmallSFProTextOnPrimary,
                                    ),
                                    SizedBox(height: 3.v),
                                    Text(
                                      "lbl_may".tr,
                                      style: AppTextStyle22
                                          .bodySmallSFProTextGray700,
                                    ),
                                    SizedBox(height: 2.v),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.v),
                              CustomImageView(
                                imagePath: ImageConstant.imgUser,
                                height: 65.v,
                                width: 14.h,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(
                left: 41.h,
                right: 22.h,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "lbl_jan".tr,
                    style: AppTextStyle22.bodySmallSFProTextGray500,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "lbl_feb".tr,
                      style: AppTextStyle22.bodySmallSFProTextGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 29.h),
                    child: Text(
                      "lbl_mar".tr,
                      style: AppTextStyle22.bodySmallSFProTextGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 28.h),
                    child: Text(
                      "lbl_apr".tr,
                      style: AppTextStyle22.bodySmallSFProTextGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 26.h),
                    child: Text(
                      "lbl_may".tr,
                      style: AppTextStyle22.bodySmallSFProTextGray500,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 29.h),
                    child: Text(
                      "lbl_jun".tr,
                      style: AppTextStyle22.bodySmallSFProTextGray500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

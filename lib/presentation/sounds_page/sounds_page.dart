import '../sounds_page/widgets/viewhierarchysection_item_widget.dart';
import 'models/viewhierarchysection_item_model.dart';
import 'notifier/sounds_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SoundsPage extends ConsumerStatefulWidget {
  const SoundsPage({Key? key})
      : super(
          key: key,
        );

  @override
  SoundsPageState createState() => SoundsPageState();
}

class SoundsPageState extends ConsumerState<SoundsPage>
    with AutomaticKeepAliveClientMixin<SoundsPage> {
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
              SizedBox(height: 34.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.h),
                child: Column(
                  children: [
                    _buildRelaxSoundsSection(context),
                    SizedBox(height: 40.v),
                    _buildViewHierarchySection(context),
                    SizedBox(height: 52.v),
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

  /// Section Widget
  Widget _buildRelaxSoundsSection(BuildContext context) {
    return SizedBox(
      height: 195.v,
      width: 339.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle23,
            height: 195.v,
            width: 339.h,
            radius: BorderRadius.circular(
              20.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 37.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_relax_sounds".tr,
                    style: theme.textTheme.headlineMedium,
                  ),
                  Opacity(
                    opacity: 0.9,
                    child: SizedBox(
                      width: 187.h,
                      child: Text(
                        "msg_sometimes_the_most".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle22.titleSmallOnPrimaryContainer
                            .copyWith(
                          height: 1.20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.v),
                  CustomElevatedButton(
                    height: 39.v,
                    width: 138.h,
                    text: "lbl_play_now".tr,
                    rightIcon: Container(
                      margin: EdgeInsets.only(left: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgOverflowmenuBlack900,
                        height: 13.v,
                        width: 12.h,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                    buttonTextStyle: AppTextStyle22.titleSmallBlack900,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchySection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Consumer(
        builder: (context, ref, _) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 21.v,
              );
            },
            itemCount: ref
                    .watch(soundsNotifier)
                    .soundsModelObj
                    ?.viewhierarchysectionItemList
                    .length ??
                0,
            itemBuilder: (context, index) {
              ViewhierarchysectionItemModel model = ref
                      .watch(soundsNotifier)
                      .soundsModelObj
                      ?.viewhierarchysectionItemList[index] ??
                  ViewhierarchysectionItemModel();
              return ViewhierarchysectionItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}

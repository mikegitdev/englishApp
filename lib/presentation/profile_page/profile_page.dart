import 'notifier/profile_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends ConsumerState<ProfilePage>
    with AutomaticKeepAliveClientMixin<ProfilePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 38.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 49.h,
                  right: 55.h,
                ),
                child: Column(
                  children: [
                    _buildStats(context),
                    SizedBox(height: 40.v),
                    CustomImageView(
                      imagePath: ImageConstant.imgNavOnprimarycontainer,
                      height: 25.v,
                      width: 230.h,
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
  Widget _buildStats(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 9.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "msg_this_week_s_stats".tr,
                style: theme.textTheme.labelLarge,
              ),
              Text(
                "lbl_show_all".tr,
                style: AppTextStyle22.labelLargeGray400,
              ),
            ],
          ),
        ),
        SizedBox(height: 18.v),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 22.v),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "lbl_999".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "lbl_799".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "lbl_599".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "lbl_399".tr,
                      style: theme.textTheme.bodySmall,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_199".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Opacity(
                      opacity: 0.5,
                      child: Text(
                        "lbl_0".tr,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                top: 6.v,
              ),
              child: Column(
                children: [
                  Divider(),
                  SizedBox(height: 23.v),
                  SizedBox(
                    height: 146.v,
                    width: 244.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 10.v),
                            child: SizedBox(
                              width: 244.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 44.v),
                            child: SizedBox(
                              width: 244.h,
                              child: Divider(),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 33.v),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Divider(),
                                SizedBox(height: 33.v),
                                Divider(),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: 196.h,
                            margin: EdgeInsets.only(
                              left: 28.h,
                              top: 63.v,
                              right: 20.h,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 19.h),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup53,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 27.v),
                                  child: Consumer(
                                    builder: (context, ref, _) {
                                      return CustomTextFormField(
                                        width: 12.h,
                                        controller: ref
                                            .watch(profileNotifier)
                                            .editTextController,
                                        borderDecoration:
                                            TextFormFieldStyleHelper.fillTeal,
                                        filled: true,
                                        fillColor: appTheme.teal200,
                                      );
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 27.h,
                                    top: 31.v,
                                  ),
                                  child: Consumer(
                                    builder: (context, ref, _) {
                                      return CustomTextFormField(
                                        width: 12.h,
                                        controller: ref
                                            .watch(profileNotifier)
                                            .editTextController1,
                                        borderDecoration:
                                            TextFormFieldStyleHelper.fillTeal,
                                        filled: true,
                                        fillColor: appTheme.teal200,
                                      );
                                    },
                                  ),
                                ),
                                Spacer(
                                  flex: 65,
                                ),
                                Container(
                                  height: 83.v,
                                  width: 12.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.teal200,
                                    borderRadius: BorderRadius.circular(
                                      6.h,
                                    ),
                                  ),
                                ),
                                Spacer(
                                  flex: 34,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Consumer(
                            builder: (context, ref, _) {
                              return CustomTextFormField(
                                width: 12.h,
                                controller: ref
                                    .watch(profileNotifier)
                                    .editTextController2,
                                textInputAction: TextInputAction.done,
                                alignment: Alignment.bottomLeft,
                                borderDecoration:
                                    TextFormFieldStyleHelper.fillTeal,
                                filled: true,
                                fillColor: appTheme.teal200,
                              );
                            },
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 123.v,
                            width: 12.h,
                            margin: EdgeInsets.only(right: 107.h),
                            decoration: BoxDecoration(
                              color: appTheme.teal200,
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: 108.v,
                            width: 12.h,
                            margin: EdgeInsets.only(right: 38.h),
                            decoration: BoxDecoration(
                              color: appTheme.teal200,
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 146.v,
                            width: 12.h,
                            margin: EdgeInsets.only(right: 2.h),
                            decoration: BoxDecoration(
                              color: appTheme.teal200,
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  SizedBox(height: 14.v),
                  Padding(
                    padding: EdgeInsets.only(left: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_mon".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_tue".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_wed".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_thu".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_fri".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_sat".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Opacity(
                          opacity: 0.5,
                          child: Text(
                            "lbl_sat".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

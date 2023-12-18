import 'package:app3/core/app_export.dart';
import 'package:app3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OnboardingScreenState createState() => OnboardingScreenState();
}

class OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: SizedBox(
          height: 100.sh,
          width: 100.sw,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.backgroundMain,
                height: 100.sh,
                width: 100.sw,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(27, 180, 27, 50),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.logoIcon,
                        height: 199,
                        width: 191,
                        color: Colors.white,
                      ),
                      30.verticalSpace,
                      Text(
                        "lbl_welcome".tr,
                        style: AppTextStyle.boldNormal.copyWith(
                          fontSize: 34.sp,
                          fontFamily: 'Alegreya',
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        width: 226,
                        margin: EdgeInsets.only(
                          left: 48,
                          right: 47,
                        ),
                        child: Text(
                          "Learn_English".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: AppTextStyle.mediumNormal.copyWith(
                            fontSize: 20.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(AppRoutes.homeScreen);
                        },
                        text: "msg_login_with_email".tr,
                        buttonTextStyle: AppTextStyle.mediumNormal
                            .copyWith(fontSize: 25.sp, color: Colors.white),
                      ),
                      25.verticalSpace,
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "msg_don_t_have_an_account2".tr,
                              style: AppTextStyle.regularNormal
                                  .copyWith(fontSize: 20.sp),
                            ),
                            TextSpan(
                              text: "  ".tr,
                            ),
                            TextSpan(
                              text: "lbl_sign_up".tr,
                              style: AppTextStyle.boldNormal.copyWith(
                                fontSize: 20.sp,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
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

  /// Section Widget
  Widget _buildConfirmation(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 67,
          vertical: 10,
        ),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 73),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_don_t_have_an_account2".tr,
                    //    style: CustomTextStyles.titleLargeRegular,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "lbl_sign_up".tr,
                    //  style: CustomTextStyles.titleLargeBold,
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}

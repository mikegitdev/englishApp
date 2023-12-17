import 'package:app3/core/app_export.dart';
import 'package:app3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        body: Stack(
          //  alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.backgroundMain,
              height: 100.sh,
              width: 100.sw,
              fit: BoxFit.fill,
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: 735,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
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
                            60.horizontalSpace,
                            Text(
                              "lbl_welcome".tr,
                              style: AppTextStyle22.displaySmallBold,
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
                                style: theme.textTheme.titleLarge,
                              ),
                            ),
                            Spacer(),
                            CustomElevatedButton(
                              text: "msg_login_with_email".tr,
                              buttonTextStyle: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            _buildConfirmation(context),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmation(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(
          bottom: 10,
        ),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              maxLines: 1,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "msg_don_t_have_an_account2".tr,
                    style: AppTextStyle22.titleLargeRegular,
                  ),
                  TextSpan(
                    text: " ",
                  ),
                  TextSpan(
                    text: "lbl_sign_up".tr,
                    style: AppTextStyle22.titleLargeBold,
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

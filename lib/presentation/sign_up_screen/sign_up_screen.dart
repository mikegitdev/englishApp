import 'notifier/sign_up_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/core/utils/validation_functions.dart';
import 'package:app3/widgets/custom_elevated_button.dart';
import 'package:app3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends ConsumerStatefulWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends ConsumerState<SignUpScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgLogo,
                  height: 49.v,
                  width: 43.h,
                  margin: EdgeInsets.only(left: 35.h),
                ),
                SizedBox(height: 34.v),
                Padding(
                  padding: EdgeInsets.only(left: 35.h),
                  child: Text(
                    "lbl_sign_up".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                Container(
                  width: 265.h,
                  margin: EdgeInsets.only(
                    left: 35.h,
                    right: 74.h,
                  ),
                  child: Text(
                    "msg_sign_up_now_for".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle22.titleLargeOnPrimaryContainerRegular22,
                  ),
                ),
                SizedBox(height: 50.v),
                _buildName(context),
                SizedBox(height: 37.v),
                _buildEmail(context),
                SizedBox(height: 37.v),
                _buildPassword(context),
                SizedBox(height: 29.v),
                _buildSeventyOne(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 34.h,
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller: ref.watch(signUpNotifier).nameController,
            hintText: "lbl_name".tr,
            alignment: Alignment.center,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 34.h,
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller: ref.watch(signUpNotifier).emailController,
            hintText: "lbl_email_address".tr,
            textInputType: TextInputType.emailAddress,
            alignment: Alignment.center,
            validator: (value) {
              if (value == null || (!isValidEmail(value, isRequired: true))) {
                return "err_msg_please_enter_valid_email".tr;
              }
              return null;
            },
            contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 35.h,
        right: 34.h,
      ),
      child: Consumer(
        builder: (context, ref, _) {
          return CustomTextFormField(
            controller: ref.watch(signUpNotifier).passwordController,
            hintText: "lbl_password".tr,
            textInputAction: TextInputAction.done,
            textInputType: TextInputType.visiblePassword,
            alignment: Alignment.center,
            validator: (value) {
              if (value == null ||
                  (!isValidPassword(value, isRequired: true))) {
                return "err_msg_please_enter_valid_password".tr;
              }
              return null;
            },
            obscureText: true,
            contentPadding: EdgeInsets.symmetric(horizontal: 10.h),
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildSIGNUP(BuildContext context) {
    return CustomElevatedButton(
      width: 321.h,
      text: "lbl_signup2".tr,
      buttonTextStyle: AppTextStyle22.headlineSmall_1,
      alignment: Alignment.topCenter,
    );
  }

  /// Section Widget
  Widget _buildSeventyOne(BuildContext context) {
    return SizedBox(
      height: 273.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          _buildSIGNUP(context),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 79.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "msg_already_have_an2".tr,
                      style: AppTextStyle22.titleLargeRegular,
                    ),
                    TextSpan(
                      text: "  ".tr,
                    ),
                    TextSpan(
                      text: "lbl_sign_in".tr,
                      style: AppTextStyle22.titleLargeBold,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Opacity(
            opacity: 0.3,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup28,
              height: 223.v,
              width: 375.h,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}

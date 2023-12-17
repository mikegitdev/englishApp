import 'notifier/login_notifier.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/core/utils/validation_functions.dart';
import 'package:app3/widgets/custom_elevated_button.dart';
import 'package:app3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
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
            height: mediaQueryData.size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 27.h,
                      top: 101.v,
                      right: 27.h,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLogo,
                          height: 49.v,
                          width: 43.h,
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                        SizedBox(height: 34.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "lbl_sign_in".tr,
                            style: theme.textTheme.headlineLarge,
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            width: 299.h,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              right: 13.h,
                            ),
                            child: Text(
                              "msg_sign_in_now_to_acces".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyle22
                                  .titleLargeOnPrimaryContainerRegular22,
                            ),
                          ),
                        ),
                        SizedBox(height: 52.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            right: 7.h,
                          ),
                          child: Consumer(
                            builder: (context, ref, _) {
                              return CustomTextFormField(
                                controller:
                                    ref.watch(loginNotifier).emailController,
                                hintText: "lbl_email_address".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_email"
                                        .tr;
                                  }
                                  return null;
                                },
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.h),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 37.v),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            right: 7.h,
                          ),
                          child: Consumer(
                            builder: (context, ref, _) {
                              return CustomTextFormField(
                                controller:
                                    ref.watch(loginNotifier).passwordController,
                                hintText: "lbl_password".tr,
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.visiblePassword,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidPassword(value,
                                          isRequired: true))) {
                                    return "err_msg_please_enter_valid_password"
                                        .tr;
                                  }
                                  return null;
                                },
                                obscureText: true,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10.h),
                              );
                            },
                          ),
                        ),
                        SizedBox(height: 8.v),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: EdgeInsets.only(right: 7.h),
                            child: Text(
                              "msg_forgot_password".tr,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ),
                        ),
                        SizedBox(height: 28.v),
                        CustomElevatedButton(
                          text: "lbl_login".tr,
                          buttonTextStyle: AppTextStyle22.headlineSmall_1,
                        ),
                        SizedBox(height: 20.v),
                        Align(
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "msg_don_t_have_an_account2".tr,
                                  style: AppTextStyle22.titleLargeRegular,
                                ),
                                TextSpan(
                                  text: "  ".tr,
                                ),
                                TextSpan(
                                  text: "lbl_sign_up".tr,
                                  style: AppTextStyle22.titleLargeBold,
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ],
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
          ),
        ),
      ),
    );
  }
}

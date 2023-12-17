import 'package:app3/core/app_export.dart';
import 'package:app3/core/utils/validation_functions.dart';
import 'package:app3/widgets/custom_elevated_button.dart';
import 'package:app3/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: SizedBox(
              height: 100.sh,
              width: 100.sw,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 27.w,
                        top: 101,
                        right: 27.w,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.logoIcon,
                            height: 100,
                            width: 100,
                            color: Colors.white,
                            //margin: EdgeInsets.only(left: 8),
                          ),
                          34.verticalSpace,
                          Text(
                            "lbl_signup2".tr,
                            style: AppTextStyle.regularNormal.copyWith(
                                fontSize: 30.sp,
                                color: Colors.white,
                                fontFamily: 'Alegreya'),
                          ),
                          10.verticalSpace,
                          Text(
                            "msg_sign_up_now_for".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.regularNormal.copyWith(
                                fontSize: 22.sp,
                                color: PrimaryColors().gray400),
                          ),
                          52.verticalSpace,
                          CustomTextFormField(
                            controller: nameController,
                            hintText: "lbl_name".tr,
                            textInputType: TextInputType.name,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                          36.verticalSpace,
                          CustomTextFormField(
                            controller: emailController,
                            hintText: "lbl_email_address".tr,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            },
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                          36.verticalSpace,
                          CustomTextFormField(
                            controller: passwordController,
                            hintText: "lbl_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_password".tr;
                              }
                              return null;
                            },
                            obscureText: true,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                          8.verticalSpace,
                          Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "msg_forgot_password".tr,
                              style: AppTextStyle.regularNormal
                                  .copyWith(fontSize: 14.sp),
                            ),
                          ),
                          SizedBox(height: 28.v),
                          CustomElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed(AppRoutes.mainPage);
                            },
                            text: "lbl_signup2".tr,
                            buttonTextStyle: AppTextStyle.mediumNormal.copyWith(
                              fontSize: 25.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 20.v),
                          Align(
                            alignment: Alignment.center,
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pushReplacementNamed(
                                    AppRoutes.loginScreen);
                              },
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "msg_already_have_an2".tr,
                                      style: AppTextStyle.regularNormal
                                          .copyWith(fontSize: 20.sp),
                                    ),
                                    TextSpan(
                                      text: "  ".tr,
                                    ),
                                    TextSpan(
                                      text: "msg_sign_in".tr,
                                      style: AppTextStyle.boldNormal.copyWith(
                                        fontSize: 20.sp,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.left,
                              ),
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
                      height: 223,
                      width: 375,
                      alignment: Alignment.bottomCenter,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

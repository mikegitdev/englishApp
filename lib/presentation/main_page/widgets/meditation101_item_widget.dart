import '../models/meditation101_item_model.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Meditation101ItemWidget extends StatelessWidget {
  Meditation101ItemWidget(
    this.meditation101ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Meditation101ItemModel meditation101ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.gray100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Container(
        height: 170.v,
        width: 339.h,
        padding: EdgeInsets.symmetric(
          horizontal: 5.h,
          vertical: 20.v,
        ),
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder20,
        ),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            CustomImageView(
              imagePath: meditation101ItemModelObj?.stackImage,
              height: 111.v,
              width: 166.h,
              alignment: Alignment.centerRight,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 25.h),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          meditation101ItemModelObj.titleText!,
                          style: AppTextStyle22.headlineSmallAlegreyaOnPrimary,
                        ),
                        SizedBox(
                          width: 150.h,
                          child: Text(
                            meditation101ItemModelObj.descriptionText!,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle22.titleSmallBlack900,
                          ),
                        ),
                        SizedBox(height: 14.v),
                        CustomElevatedButton(
                          height: 39.v,
                          width: 138.h,
                          text: "lbl_watch_now".tr,
                          rightIcon: Container(
                            margin: EdgeInsets.only(left: 8.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgOverflowmenu,
                              height: 13.adaptSize,
                              width: 13.adaptSize,
                            ),
                          ),
                          buttonStyle: CustomButtonStyles.fillOnPrimary,
                          buttonTextStyle:
                              AppTextStyle22.titleSmallOnPrimaryContainer_1,
                          alignment: Alignment.centerLeft,
                        ),
                      ],
                    ),
                    Container(
                      height: 8.v,
                      width: 56.h,
                      margin: EdgeInsets.only(
                        left: 46.h,
                        top: 113.v,
                        bottom: 4.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.gray100,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

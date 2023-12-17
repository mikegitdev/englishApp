import '../models/welcomebackafreen_item_model.dart';
import 'package:app3/core/app_export.dart';
import 'package:app3/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WelcomebackafreenItemWidget extends StatelessWidget {
  WelcomebackafreenItemWidget(
    this.welcomebackafreenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  WelcomebackafreenItemModel welcomebackafreenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 62.h,
      child: Padding(
        padding: EdgeInsets.only(bottom: 1.v),
        child: Column(
          children: [
            CustomIconButton(
              height: 65.v,
              width: 62.h,
              padding: EdgeInsets.all(13.h),
              child: CustomImageView(
                imagePath: welcomebackafreenItemModelObj?.mobile,
              ),
            ),
            SizedBox(height: 4.v),
            Text(
              welcomebackafreenItemModelObj.text!,
              style: AppTextStyle22.bodySmallAlegreyaSansOnPrimaryContainer,
            ),
          ],
        ),
      ),
    );
  }
}

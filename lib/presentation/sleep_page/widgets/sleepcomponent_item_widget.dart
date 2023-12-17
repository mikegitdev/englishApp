import '../models/sleepcomponent_item_model.dart';
import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SleepcomponentItemWidget extends StatelessWidget {
  SleepcomponentItemWidget(
    this.sleepcomponentItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  SleepcomponentItemModel sleepcomponentItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 40.v,
      ),
      decoration: AppDecoration.fillSecondaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      width: 100.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: sleepcomponentItemModelObj?.imageClass,
            height: 12.v,
            width: 11.h,
          ),
          SizedBox(height: 22.v),
          Text(
            sleepcomponentItemModelObj.text!,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 4.v),
          Text(
            sleepcomponentItemModelObj.sleep!,
            style: AppTextStyle22.bodySmallAlegreyaSansOnPrimaryContainer,
          ),
          SizedBox(height: 6.v),
        ],
      ),
    );
  }
}

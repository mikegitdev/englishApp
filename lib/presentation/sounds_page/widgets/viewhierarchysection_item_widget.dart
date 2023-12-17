import '../models/viewhierarchysection_item_model.dart';
import 'package:app3/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchysectionItemWidget extends StatelessWidget {
  ViewhierarchysectionItemWidget(
    this.viewhierarchysectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchysectionItemModel viewhierarchysectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: viewhierarchysectionItemModelObj?.image,
          height: 65.adaptSize,
          width: 65.adaptSize,
          radius: BorderRadius.circular(
            20.h,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 14.v,
            bottom: 10.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                viewhierarchysectionItemModelObj.text1!,
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 1.v),
              Text(
                viewhierarchysectionItemModelObj.text2!,
                style:
                    AppTextStyle22.bodySmallAlegreyaSansOnPrimaryContainerLight,
              ),
            ],
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.75,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 23.v),
            child: Text(
              viewhierarchysectionItemModelObj.text3!,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ),
      ],
    );
  }
}

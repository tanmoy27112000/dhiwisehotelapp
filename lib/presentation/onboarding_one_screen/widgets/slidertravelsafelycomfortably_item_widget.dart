import '../controller/onboarding_one_controller.dart';
import '../models/slidertravelsafelycomfortably_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore: must_be_immutable
class SlidertravelsafelycomfortablyItemWidget extends StatelessWidget {
  SlidertravelsafelycomfortablyItemWidget(
      this.slidertravelsafelycomfortablyItemModelObj);

  SlidertravelsafelycomfortablyItemModel
      slidertravelsafelycomfortablyItemModelObj;

  var controller = Get.find<OnboardingOneController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            311.00,
          ),
          child: Text(
            "msg_travel_safely".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRomanBold32,
          ),
        ),
        Container(
          width: getHorizontalSize(
            368.00,
          ),
          margin: getMargin(
            top: 11,
          ),
          child: Text(
            "msg_lorem_ipsum_dol3".tr,
            maxLines: null,
            textAlign: TextAlign.center,
            style: AppStyle.txtUrbanistRegular16.copyWith(
              letterSpacing: getHorizontalSize(
                0.20,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

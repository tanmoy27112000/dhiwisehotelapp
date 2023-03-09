import '../controller/onboarding_three_controller.dart';
import '../models/sliderletsdiscoverthe_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

// ignore: must_be_immutable
class SliderletsdiscovertheOneItemWidget extends StatelessWidget {
  SliderletsdiscovertheOneItemWidget(this.sliderletsdiscovertheOneItemModelObj);

  SliderletsdiscovertheOneItemModel sliderletsdiscovertheOneItemModelObj;

  var controller = Get.find<OnboardingThreeController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: getHorizontalSize(
            342.00,
          ),
          child: Text(
            "msg_let_s_discover".tr,
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
            top: 18,
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

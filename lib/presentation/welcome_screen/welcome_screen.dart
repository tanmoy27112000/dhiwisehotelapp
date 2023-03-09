import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.gray900,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgWelcomescreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Spacer(),
                Container(
                  width: size.width,
                  padding: getPadding(
                    left: 32,
                    top: 45,
                    right: 32,
                    bottom: 45,
                  ),
                  decoration: AppDecoration.gradientGray80000Bluegray900,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 208,
                        ),
                        child: Text(
                          "lbl_welcome_to".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold48,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 23,
                        ),
                        child: Text(
                          "lbl_comfort".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBlack64,
                        ),
                      ),
                      Container(
                        width: getHorizontalSize(
                          327.00,
                        ),
                        margin: getMargin(
                          top: 41,
                        ),
                        child: Text(
                          "msg_the_best_hotel".tr,
                          maxLines: null,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistSemiBold18.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.20,
                            ),
                          ),
                        ),
                      ),
                    ],
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

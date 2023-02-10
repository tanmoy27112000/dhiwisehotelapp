import '../onboarding_three_screen/widgets/sliderletsdiscoverthe_one_item_widget.dart';import 'controller/onboarding_three_controller.dart';import 'models/sliderletsdiscoverthe_one_item_model.dart';import 'package:carousel_slider/carousel_slider.dart';import 'package:flutter/material.dart';import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/widgets/custom_button.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class OnboardingThreeScreen extends GetWidget<OnboardingThreeController> {@override Widget build(BuildContext context) { return SafeArea(top: false, bottom: false, child: Scaffold(backgroundColor: ColorConstant.gray900, body: Container(width: size.width, child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgRectangle11, height: getVerticalSize(420.00), width: getHorizontalSize(428.00)), Padding(padding: getPadding(top: 45), child: Obx(() => CarouselSlider.builder(options: CarouselOptions(height: getVerticalSize(161.00), initialPage: 0, autoPlay: true, viewportFraction: 1.0, enableInfiniteScroll: false, scrollDirection: Axis.horizontal, onPageChanged: (index, reason) {controller.silderIndex.value = index;}), itemCount: controller.onboardingThreeModelObj.value.sliderletsdiscovertheOneItemList.length, itemBuilder: (context, index, realIndex) {SliderletsdiscovertheOneItemModel model = controller.onboardingThreeModelObj.value.sliderletsdiscovertheOneItemList[index]; return SliderletsdiscovertheOneItemWidget(model);}))), Obx(() => Container(height: getVerticalSize(8.00), margin: getMargin(top: 37), child: AnimatedSmoothIndicator(activeIndex: controller.silderIndex.value, count: controller.onboardingThreeModelObj.value.sliderletsdiscovertheOneItemList.length, axisDirection: Axis.horizontal, effect: ScrollingDotsEffect(spacing: 6, activeDotColor: ColorConstant.cyan600, dotColor: ColorConstant.gray800, dotHeight: getVerticalSize(8.00), dotWidth: getHorizontalSize(8.00))))), CustomButton(height: 55, width: 380, text: "lbl_next".tr, margin: getMargin(top: 40, bottom: 5), onTap: onTapNext)])), bottomNavigationBar: Padding(padding: getPadding(left: 24, right: 24, bottom: 48), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomButton(height: 55, width: 380, text: "lbl_skip".tr, variant: ButtonVariant.FillGray800, onTap: onTapSkip)])))); } 
onTapNext() { Get.toNamed(AppRoutes.letSYouInScreen); } 
onTapSkip() { Get.toNamed(AppRoutes.letSYouInScreen); } 
 }

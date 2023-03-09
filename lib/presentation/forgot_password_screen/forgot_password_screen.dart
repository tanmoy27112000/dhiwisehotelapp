import '../forgot_password_screen/widgets/listuser_item_widget.dart';import 'controller/forgot_password_controller.dart';import 'models/listuser_item_model.dart';import 'package:flutter/material.dart';import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/widgets/app_bar/appbar_image.dart';import 'package:hotelapp/widgets/app_bar/appbar_title.dart';import 'package:hotelapp/widgets/app_bar/custom_app_bar.dart';import 'package:hotelapp/widgets/custom_button.dart';class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {@override Widget build(BuildContext context) { return SafeArea(top: false, bottom: false, child: Scaffold(backgroundColor: ColorConstant.gray900, appBar: CustomAppBar(height: getVerticalSize(52.00), leadingWidth: 52, leading: AppbarImage(height: getSize(28.00), width: getSize(28.00), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 11, bottom: 13), onTap: onTapArrowleft1), title: AppbarTitle(text: "lbl_forgot_password".tr, margin: getMargin(left: 16))), body: Container(width: size.width, padding: getPadding(left: 24, top: 39, right: 24, bottom: 39), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [CustomImageView(imagePath: ImageConstant.imgImage, height: getSize(240.00), width: getSize(240.00), margin: getMargin(top: 19)), Container(width: getHorizontalSize(371.00), margin: getMargin(top: 40), child: Text("msg_select_which_co".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRegular16WhiteA700.copyWith(letterSpacing: getHorizontalSize(0.20)))), Padding(padding: getPadding(top: 21), child: Obx(() => ListView.separated(physics: BouncingScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return SizedBox(height: getVerticalSize(24.00));}, itemCount: controller.forgotPasswordModelObj.value.listuserItemList.length, itemBuilder: (context, index) {ListuserItemModel model = controller.forgotPasswordModelObj.value.listuserItemList[index]; return ListuserItemWidget(model);})))])), bottomNavigationBar: Padding(padding: getPadding(left: 24, right: 24, bottom: 48), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomButton(height: 55, width: 380, text: "lbl_continue".tr, variant: ButtonVariant.OutlineGreenA7003f, onTap: onTapContinue)])))); } 
onTapContinue() { Get.toNamed(AppRoutes.forgotPasswordTypeOtpScreen); } 
onTapArrowleft1() { Get.back(); } 
 }

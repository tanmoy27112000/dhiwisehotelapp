import '../filter_result_screen/widgets/listrectanglefour4_item_widget.dart';
import '../filter_result_screen/widgets/listsizemediumtypefilled3_item_widget.dart';
import 'controller/filter_result_controller.dart';
import 'models/listrectanglefour4_item_model.dart';
import 'models/listsizemediumtypefilled3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hotelapp/core/app_export.dart';
import 'package:hotelapp/presentation/booking_ongoing_tab_container_page/booking_ongoing_tab_container_page.dart';
import 'package:hotelapp/presentation/home_screen_page/home_screen_page.dart';
import 'package:hotelapp/presentation/profile_settings_page/profile_settings_page.dart';
import 'package:hotelapp/presentation/search_filter_page/search_filter_page.dart';
import 'package:hotelapp/widgets/custom_bottom_bar.dart';
import 'package:hotelapp/widgets/custom_search_view.dart';

class FilterResultScreen extends GetWidget<FilterResultController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray900,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    width: 380,
                    focusNode: FocusNode(),
                    controller: controller.searchBarController,
                    hintText: "lbl_hotel".tr,
                    fontStyle: SearchViewFontStyle.UrbanistSemiBold14,
                    prefix: Container(
                      margin: getMargin(
                        left: 20,
                        top: 18,
                        right: 12,
                        bottom: 18,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56.00,
                      ),
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          15.00,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          controller.searchBarController.clear;
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        56.00,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: getVerticalSize(
                        62.00,
                      ),
                      child: Obx(
                        () => ListView.separated(
                          padding: getPadding(
                            top: 24,
                          ),
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          separatorBuilder: (context, index) {
                            return SizedBox(
                              height: getVerticalSize(
                                12.00,
                              ),
                            );
                          },
                          itemCount: controller.filterResultModelObj.value
                              .listsizemediumtypefilled3ItemList.length,
                          itemBuilder: (context, index) {
                            Listsizemediumtypefilled3ItemModel model =
                                controller.filterResultModelObj.value
                                    .listsizemediumtypefilled3ItemList[index];
                            return Listsizemediumtypefilled3ItemWidget(
                              model,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                            bottom: 3,
                          ),
                          child: Text(
                            "msg_recommended_58".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold18,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMenu28x68,
                          height: getVerticalSize(
                            28.00,
                          ),
                          width: getHorizontalSize(
                            68.00,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 22,
                      right: 24,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              24.00,
                            ),
                          );
                        },
                        itemCount: controller.filterResultModelObj.value
                            .listrectanglefour4ItemList.length,
                        itemBuilder: (context, index) {
                          Listrectanglefour4ItemModel model = controller
                              .filterResultModelObj
                              .value
                              .listrectanglefour4ItemList[index];
                          return Listrectanglefour4ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchFilterPage;
      case BottomBarEnum.Booking:
        return AppRoutes.bookingOngoingTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileSettingsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      case AppRoutes.searchFilterPage:
        return SearchFilterPage();
      case AppRoutes.bookingOngoingTabContainerPage:
        return BookingOngoingTabContainerPage();
      case AppRoutes.profileSettingsPage:
        return ProfileSettingsPage();
      default:
        return DefaultWidget();
    }
  }
}

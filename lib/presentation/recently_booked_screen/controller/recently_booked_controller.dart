import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/presentation/recently_booked_screen/models/recently_booked_model.dart';class RecentlyBookedController extends GetxController {Rx<RecentlyBookedModel> recentlyBookedModelObj = RecentlyBookedModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

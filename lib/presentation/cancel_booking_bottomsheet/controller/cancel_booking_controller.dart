import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/presentation/cancel_booking_bottomsheet/models/cancel_booking_model.dart';class CancelBookingController extends GetxController {Rx<CancelBookingModel> cancelBookingModelObj = CancelBookingModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

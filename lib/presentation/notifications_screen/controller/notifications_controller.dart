import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/presentation/notifications_screen/models/notifications_model.dart';class NotificationsController extends GetxController {Rx<NotificationsModel> notificationsModelObj = NotificationsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

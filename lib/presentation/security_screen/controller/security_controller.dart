import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/presentation/security_screen/models/security_model.dart';class SecurityController extends GetxController {Rx<SecurityModel> securityModelObj = SecurityModel().obs;

RxBool isSelectedSwitch = false.obs;

RxBool isSelectedSwitch1 = false.obs;

RxBool isSelectedSwitch2 = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/presentation/location_screen/models/location_model.dart';class LocationController extends GetxController {Rx<LocationModel> locationModelObj = LocationModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

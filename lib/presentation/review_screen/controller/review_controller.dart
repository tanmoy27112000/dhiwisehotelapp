import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/presentation/review_screen/models/review_model.dart';class ReviewController extends GetxController {Rx<ReviewModel> reviewModelObj = ReviewModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

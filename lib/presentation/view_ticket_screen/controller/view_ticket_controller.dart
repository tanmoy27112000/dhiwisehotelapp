import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/presentation/view_ticket_screen/models/view_ticket_model.dart';class ViewTicketController extends GetxController {Rx<ViewTicketModel> viewTicketModelObj = ViewTicketModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

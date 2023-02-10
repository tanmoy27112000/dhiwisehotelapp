import 'package:hotelapp/core/app_export.dart';import 'package:hotelapp/presentation/select_date_guest_screen/models/select_date_guest_model.dart';import 'package:table_calendar/table_calendar.dart';class SelectDateGuestController extends GetxController {Rx<SelectDateGuestModel> selectDateGuestModelObj = SelectDateGuestModel().obs;

DateTime? rangeStart;

DateTime? rangeEnd;

DateTime? selectedDay;

Rx<DateTime> focusedDay = DateTime.now().obs;

Rx<RangeSelectionMode> rangeSelectionMode = RangeSelectionMode.toggledOn.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }

import 'package:get/get.dart';import 'hotel_details_item_model.dart';import 'package:hotelapp/data/models/selectionPopupModel/selection_popup_model.dart';class HotelDetailsModel {RxList<HotelDetailsItemModel> hotelDetailsItemList = RxList.filled(3,HotelDetailsItemModel());

RxList<SelectionPopupModel> dropdownItemList = [SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)].obs;

 }

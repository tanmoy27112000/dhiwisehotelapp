import 'package:hotelapp/core/app_export.dart';
import 'package:hotelapp/presentation/bookmark_removal_bottomsheet/models/bookmark_removal_model.dart';

class BookmarkRemovalController extends GetxController {
  Rx<BookmarkRemovalModel> bookmarkRemovalModelObj = BookmarkRemovalModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}

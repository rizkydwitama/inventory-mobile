import 'package:get/get.dart';
import 'package:inventory_mobile/features/search_item/search_item_controller.dart';

class SearchItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchItemController>(() => SearchItemController());
  }
}
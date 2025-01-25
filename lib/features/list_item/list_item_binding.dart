import 'package:get/get.dart';
import 'package:inventory_mobile/features/list_item/list_item_controller.dart';

class ListItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListItemController>(() => ListItemController());
  }
}
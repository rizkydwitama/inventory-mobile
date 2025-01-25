import 'package:get/get.dart';
import 'package:inventory_mobile/features/add_item/add_item_controller.dart';

class AddItemBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddItemController>(() => AddItemController());
  }
}
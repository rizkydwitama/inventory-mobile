import 'package:get/get.dart';
import 'package:inventory_mobile/features/list_item/list_item_binding.dart';
import 'package:inventory_mobile/features/list_item/list_item_page.dart';
import 'package:inventory_mobile/routes/app_routes.dart';

import '../features/add_item/add_item_binding.dart';
import '../features/add_item/add_item_page.dart';
import '../features/search_item/search_item_binding.dart';
import '../features/search_item/search_item_page.dart';

class AppPages {
  static final List<GetPage> getPages = [
    GetPage(
        name: AppRoutes.listItem,
        page: () => ListItemPage(),
        binding: ListItemBinding()
    ),
    GetPage(
        name: AppRoutes.addItem,
        page: () => AddItemPage(),
        binding: AddItemBinding()
    ),
    GetPage(
        name: AppRoutes.searchItem,
        page: () => SearchItemPage(),
        binding: SearchItemBinding()
    ),
  ];
}
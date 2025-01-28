import 'package:get/get.dart';

class ListItemController extends GetxController {
  RxBool isEdit = false.obs;
  RxBool isChecked = false.obs;

  Future onRefresh() async {
    await Future.delayed(Duration(
      seconds: 1, milliseconds: 500
    ));
  }
}
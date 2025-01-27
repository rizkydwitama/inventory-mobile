import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddItemController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxBool isButtonEnable = false.obs;

  bool validateForm() {
    return isButtonEnable.value = formKey.currentState?.validate() ?? false;
  }

  @override
  void onInit() {
    super.onInit();
    debounce(
      isButtonEnable,
          (_) {},
      time: Duration(milliseconds: 1),
    );
  }
}
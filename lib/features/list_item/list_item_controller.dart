import 'package:get/get.dart';

class ListItemController extends GetxController {

  Future onRefresh() async {
    await Future.delayed(Duration(
      seconds: 1, milliseconds: 500
    ));
  }
}
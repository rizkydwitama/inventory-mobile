import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SearchItemController extends GetxController {
  final TextEditingController searchController = TextEditingController();

  Future onRefresh() async {
    await Future.delayed(Duration(
        seconds: 1, milliseconds: 500
    ));
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:inventory_mobile/features/add_item/add_item_controller.dart';
import 'package:inventory_mobile/widgets/app_bar_widgets.dart';
import 'package:inventory_mobile/widgets/text_form_field_widget.dart';

import '../../themes/app_colors.dart';

class AddItemPage extends StatelessWidget {
  const AddItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AddItemController controller = Get.find();

    return Scaffold(
      appBar: AppBarWidgets(
        title: 'Tambah Barang',
        enableCenterTitle: false,
        enableLeading: true,
        enableAction: false,
      ),
      body: Form(
        key: controller.formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Text(
              'Nama Barang*',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 4,),
            TextFormFieldWidget(
              name: 'Nama Barang',
              onChanged: (String value) {
                controller.validateForm();
              },
            ),
            const SizedBox(height: 24,),
            Text(
              'Kategori Barang*',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 4,),
            TextFormFieldWidget(
              name: 'Kategori Barang',
              onChanged: (String value) {
                controller.validateForm();
              },
            ),
            const SizedBox(height: 24,),
            Text(
              'Kelompok Barang*',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 4,),
            TextFormFieldWidget(
              name: 'Kelompok Barang',
              onChanged: (String value) {
                controller.validateForm();
              },
            ),
            const SizedBox(height: 24,),
            Text(
              'Stok*',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 4,),
            TextFormFieldWidget(
              name: 'Stok',
              onChanged: (String value) {
                controller.validateForm();
              },
            ),
            const SizedBox(height: 24,),
            Text(
              'Harga*',
              style: TextStyle(
                  fontSize: 14,
                  color: AppColors.dark,
                  fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 4,),
            TextFormFieldWidget(
              name: 'Harga',
              onChanged: (String value ) {
                controller.validateForm();
              },
            ),
          ],
        ),
      ),
      floatingActionButton: AspectRatio(
        aspectRatio: Get.width / 40,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Obx(() => FloatingActionButton.extended(
            onPressed: controller.isButtonEnable.value
                ? () {}
                : null,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(360)
            ),
            backgroundColor: AppColors.primary,
            elevation: 0,
            highlightElevation: 0,
            label: Text(
              'Tambah Barang',
              style: TextStyle(
                  color: AppColors.light,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
              ),
            ),
          )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

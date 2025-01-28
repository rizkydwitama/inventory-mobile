import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:inventory_mobile/features/list_item/list_item_controller.dart';
import 'package:inventory_mobile/widgets/app_bar_widgets.dart';
import 'package:inventory_mobile/widgets/detail_item_widget.dart';
import '../../routes/app_routes.dart';
import '../../themes/app_colors.dart';

class ListItemPage extends StatelessWidget {
  const ListItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final ListItemController controller = Get.find();

    return Scaffold(
      appBar: AppBarWidgets(
        title: 'List Stok Barang',
        actionOnPressed: () {
          Get.toNamed(AppRoutes.searchItem);
        },
        enableCenterTitle: true,
        enableLeading: false,
        enableAction: true,
      ),
      body: RefreshIndicator(
        onRefresh: controller.onRefresh,
        color: AppColors.primary,
        backgroundColor: AppColors.light,
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 16, vertical: 24
          ),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '629 Data ditampilkan',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  ),
                ),
                InkWell(
                  onTap: () {
                    controller.isEdit.value
                        ? controller.isEdit.value = false
                        : controller.isEdit.value = true;
                  },
                  child: Text(
                    'Edit Data',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.secondary,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 24,),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          showDragHandle: true,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(8)
                            )
                          ),
                          builder: (context) {
                            return DetailItemWidget(
                                name: 'Iphone 15 256GB',
                                category: 'Smartphone',
                                group: 'Electronic',
                                stock: 20,
                                price: 12000000
                            );
                          }
                      );
                    },
                    child: Container(
                      width: Get.width,
                      padding: EdgeInsets.symmetric(
                        vertical: 16
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.light,
                        border: Border(
                          bottom: BorderSide(
                              color: AppColors.border,
                              width: 1
                          ),
                        )
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Obx(() => Visibility(
                              visible: controller.isEdit.value,
                              child: Padding(
                                padding: EdgeInsets.only(right: 15),
                                child: InkWell(
                                  onTap: () {
                                    controller.isChecked.value
                                        ? controller.isChecked.value = false
                                        : controller.isChecked.value = true;
                                  },
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(4)
                                      ),
                                      color: AppColors.transparent,
                                      border: Border.all(
                                        color: AppColors.grey,
                                        width: 2
                                      ),
                                    ),
                                    child: Visibility(
                                      visible: controller.isChecked.value,
                                      child: Center(
                                        child: Icon(
                                          Icons.check,
                                          size: 14,
                                          color: AppColors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                          ),),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '[Nama Barang]',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: AppColors.dark,
                                  fontWeight: FontWeight.w500
                                ),
                              ),
                              const SizedBox(height: 4,),
                              Text(
                                '[Stok]',
                                style: TextStyle(
                                  color: AppColors.grey,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400
                                ),
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            '[Harga]',
                            style: TextStyle(
                              color: AppColors.dark,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }
            ),
            const SizedBox(height: 12,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.arrow_upward,
                  color: AppColors.grey,
                  size: 16,
                ),
                const SizedBox(width: 4,),
                Text(
                  'Tarik untuk memuat data lainnya',
                  style: TextStyle(
                    color: AppColors.grey,
                    fontSize: 12,
                    fontWeight: FontWeight.w400
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Obx(() => Visibility(
        visible: !controller.isEdit.value,
        child: FloatingActionButton.extended(
          onPressed: () => Get.toNamed(AppRoutes.addItem),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(360)
          ),
          backgroundColor: AppColors.primary,
          icon: Icon(
            Icons.add,
            size: 32,
            color: AppColors.light,
          ),
          label: Text(
            'Barang',
            style: TextStyle(
                color: AppColors.light,
                fontSize: 16,
                fontWeight: FontWeight.w500
            ),
          ),
        ),
      )),
      bottomNavigationBar: Obx(() => Visibility(
        visible: controller.isEdit.value,
        child: Container(
          width: Get.width,
          height: 72,
          padding: EdgeInsets.all(16),
          color: AppColors.transparent,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.isChecked.value
                            ? controller.isChecked.value = false
                            : controller.isChecked.value = true;
                      },
                      child: Container(
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(4)
                          ),
                          color: AppColors.transparent,
                          border: Border.all(
                              color: AppColors.grey,
                              width: 2
                          ),
                        ),
                        child: Visibility(
                          visible: controller.isChecked.value,
                          child: Center(
                            child: Icon(
                              Icons.check,
                              size: 14,
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14,),
                    Text(
                      'Pilih Semua',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.dark
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(width: 8,),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.light,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        side: BorderSide(
                          color: AppColors.border,
                          strokeAlign: 1.5,
                        )
                      )
                    ),
                    child: Text(
                      'Hapus Barang',
                      style: TextStyle(
                        color: AppColors.danger,
                        fontSize: 14,
                        fontWeight: FontWeight.w500
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ))
    );
  }
}

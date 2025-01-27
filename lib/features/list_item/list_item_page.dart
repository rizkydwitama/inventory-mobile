import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:inventory_mobile/features/list_item/list_item_controller.dart';
import 'package:inventory_mobile/widgets/app_bar_widgets.dart';
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
        actionOnPressed: () {},
        enableCenterTitle: true,
        enableLeading: false,
        enableAction: true,
      ),
      body: RefreshIndicator(
        onRefresh: controller.onRefresh,
        color: AppColors.primary,
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
                Text(
                  'Edit Data',
                  style: TextStyle(
                    fontSize: 12,
                    color: AppColors.secondary,
                    fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
            const SizedBox(height: 24,),
            ListView.builder(
                itemCount: 5,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                  return Container(
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
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
      floatingActionButton: FloatingActionButton.extended(
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
    );
  }
}

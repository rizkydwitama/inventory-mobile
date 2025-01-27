import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:inventory_mobile/features/search_item/search_item_controller.dart';
import 'package:inventory_mobile/widgets/search_app_bar_widgets.dart';

import '../../themes/app_colors.dart';

class SearchItemPage extends StatelessWidget {
  const SearchItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final SearchItemController controller = Get.find();

    return Scaffold(
      appBar: SearchAppBarWidgets(
        searchController: controller.searchController,
        onChanged: (String value) {},
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: controller.onRefresh,
          color: AppColors.primary,
          backgroundColor: AppColors.light,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            children: [
              Text(
                '10 Data Cocok',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey
                ),
              ),
              const SizedBox(height: 24,),
              ListView.builder(
                  itemCount: 5,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
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
                                '[Kategori ID]',
                                style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              const SizedBox(height: 4,),
                              Text(
                                '[Kelompok Barang]',
                                style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                '[Stok]',
                                style: TextStyle(
                                    color: AppColors.grey,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400
                                ),
                              ),
                              const SizedBox(height: 8,),
                              Text(
                                '[Harga]',
                                style: TextStyle(
                                    color: AppColors.dark,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500
                                ),
                              ),

                            ],
                          )
                        ],
                      ),
                    );
                  }
              ),
              const SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/icons/ic_refresh.svg',
                      colorFilter: ColorFilter.mode(
                        AppColors.secondary,
                        BlendMode.srcIn
                      ),
                    ),
                  ),
                  const SizedBox(width: 8,),
                  Text(
                    'Refresh untuk melihat data lainnya',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.secondary,
                      fontWeight: FontWeight.w500
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

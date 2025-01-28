import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class DetailItemWidget extends StatelessWidget {
  const DetailItemWidget({
    super.key,
    required this.name,
    required this.category,
    required this.group,
    required this.stock,
    required this.price
  });

  final String name;
  final String category;
  final String group;
  final int stock;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.infinity,
                height: 328,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/img_empty.png'),
                        fit: BoxFit.cover
                    )
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                    vertical: 12, horizontal: 16
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                        color: AppColors.border,
                        width: 1
                    )
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Nama Barang',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.dark
                          ),
                        ),
                        Text(
                          'Iphone 15 256GB',
                          style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Divider(color: AppColors.border, height: 0,),
                    const SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Kategori',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.dark
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Divider(color: AppColors.border, height: 0,),
                    const SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Kelompok',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.dark
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 12,),
                    Divider(color: AppColors.border, height: 0,),
                    const SizedBox(height: 12,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Stok',
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: AppColors.dark
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                              color: AppColors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.lightSecond
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Harga',
                      style: TextStyle(
                          color: AppColors.dark,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Text(
                      'Rp. 1.000.000',
                      style: TextStyle(
                          color: AppColors.dark,
                          fontSize: 14,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 32,),
              Row(
                children: [
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
                  ),
                  const SizedBox(width: 8,),
                  Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                                side: BorderSide(
                                  color: AppColors.border,
                                  strokeAlign: 1.5,
                                )
                            )
                        ),
                        child: Text(
                          'Edit Barang',
                          style: TextStyle(
                              color: AppColors.light,
                              fontSize: 14,
                              fontWeight: FontWeight.w500
                          ),
                        )
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ]
    );
  }
}

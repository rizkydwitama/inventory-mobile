import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../themes/app_colors.dart';

class SearchAppBarWidgets extends StatelessWidget implements PreferredSizeWidget {
  const SearchAppBarWidgets({super.key, required this.searchController, required this.onChanged});

  final TextEditingController searchController;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.light,
          boxShadow: [
            BoxShadow(
                color: AppColors.dark.withValues(alpha: 0.04),
                spreadRadius: -2,
                blurRadius: 8,
                offset: Offset(0, 2)
            ),
            BoxShadow(
                color: AppColors.dark.withValues(alpha: 0.04),
                spreadRadius: -6,
                blurRadius: 16,
                offset: Offset(0, 4)
            )
          ]
      ),
      child: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
              size: 24,
              color: AppColors.dark,
            )
        ),
        title: TextFormField(
          controller: searchController,
          onChanged: onChanged,
          cursorColor: AppColors.dark,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.dark
          ),
          decoration: InputDecoration(
            filled: true,
            contentPadding: EdgeInsets.all(12),
            hintText: 'Cari data...',
            hintStyle: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.grey
            ),
            prefixIcon: Container(
              width: 16,
              height: 16,
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/icons/ic_search.svg',
                width: 16,
                height: 16,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                  AppColors.grey, BlendMode.srcIn
                ),
              ),
            ),
            fillColor: AppColors.lightSecond,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(900),
              borderSide: BorderSide.none
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(900),
                borderSide: BorderSide.none
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

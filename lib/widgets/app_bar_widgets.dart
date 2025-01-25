import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../themes/app_colors.dart';

class AppBarWidgets extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidgets({super.key, required this.title, this.actionOnPressed});

  final String title;
  final Function()? actionOnPressed;

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
        centerTitle: true,
        title: Text(
          title,
        ),
        actions: [
          IconButton(
            onPressed: actionOnPressed,
            icon: SvgPicture.asset('assets/icons/ic_search.svg'),
          )
        ],
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(
              Icons.arrow_back,
            )
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}

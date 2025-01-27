import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.name,
    required this.onChanged
  });

  final String name;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: true,
      onChanged: onChanged,
      style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: AppColors.dark
      ),
      cursorColor: AppColors.dark,
      decoration: InputDecoration(
          filled: false,
          hintText: 'Masukkan $name',
          hintStyle: TextStyle(
              color: AppColors.grey,
              fontWeight: FontWeight.w400,
              fontSize: 14
          ),
          contentPadding: EdgeInsets.symmetric(
              horizontal: 16, vertical: 12
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.dark,
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(
                color: AppColors.border,
              )
          )
      ),
    );
  }
}

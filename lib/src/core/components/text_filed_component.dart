import 'package:flutter/material.dart';

import 'package:pokedex_v2/src/core/theme/app_colors.dart';
import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_extension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';

class TextFiledComponent extends StatelessWidget {
  const TextFiledComponent({
    Key? key,
    required this.hint,
    required this.func,
    required this.controller,
  }) : super(key: key);

  final String hint;
  final Function(String?) func;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        isCollapsed: true,
        suffixIcon: Icon(
          Icons.search,
          color: AppExtension.textColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: AppDimension.size_3,
        ),
        hintText: hint,
        hintStyle: AppFonts.bodyMedium(
          color: AppExtension.textLightColor,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimension.size_4),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        fillColor: AppColors.neutral.shade100,
      ),
      controller: controller,
      onChanged: func,
    );
  }
}

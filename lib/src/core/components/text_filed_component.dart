import 'package:flutter/material.dart';

import 'package:pokedex_v2/src/core/theme/app_colors.dart';
import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_extension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';

class TextFiledComponent extends StatelessWidget {
  const TextFiledComponent({
    Key? key,
    required this.hint,
  }) : super(key: key);

  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        isDense: true,
        suffixIcon: Icon(
          Icons.search,
          color: AppExtension.textColor,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppDimension.size_1,
          horizontal: AppDimension.size_3,
        ),
        hintText: hint,
        hintStyle: AppFonts.bodyMedium(),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDimension.size_4),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        fillColor: AppColors.neutral.shade100,
      ),
    );
  }
}

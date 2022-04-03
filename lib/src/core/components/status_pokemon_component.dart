import 'package:flutter/material.dart';

import 'package:pokedex_v2/src/core/theme/app_colors.dart';
import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';

class StatusPokemonComponent extends StatelessWidget {
  const StatusPokemonComponent({
    Key? key,
    required this.value,
    required this.title,
  }) : super(key: key);

  final int value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppDimension.size_1,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: Text(
              title,
              style: AppFonts.bodyMedium(),
            ),
          ),
          const SizedBox(
            width: AppDimension.size_2,
          ),
          Expanded(
            child: Container(
              decoration: ShapeDecoration(
                color: AppColors.grey.shade200,
                shape: const StadiumBorder(),
              ),
              height: 4,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FractionallySizedBox(
                  widthFactor: value / 100,
                  child: Container(
                    decoration: ShapeDecoration(
                      color: AppColors.red.shade400,
                      shape: const StadiumBorder(),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

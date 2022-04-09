import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pokedex_v2/src/core/theme/app_colors.dart';
import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';
import 'package:pokedex_v2/src/core/theme/app_type_pokemon_style.dart';

class StatusPokemonComponent extends StatelessWidget {
  const StatusPokemonComponent({
    Key? key,
    required this.value,
    required this.type,
    required this.title,
  }) : super(key: key);

  final int value;
  final String type;
  final String title;

  @override
  Widget build(BuildContext context) {
    final MaterialColor color = AppTypePokemonStyle.getTypeColor(type);
    return Padding(
      padding: const EdgeInsets.only(
        bottom: AppDimension.size_1,
      ),
      child: Row(
        children: [
          SizedBox(
            width: Get.width / 3,
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
                      color: color.shade400,
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

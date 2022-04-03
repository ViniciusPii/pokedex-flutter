import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_v2/src/core/components/bg_rotate_component.dart';
import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_extension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';
import 'package:pokedex_v2/src/core/theme/app_type_pokemon_style.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({
    Key? key,
    required this.color,
    required this.pokemon,
  }) : super(key: key);

  final MaterialColor color;
  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color.shade200,
      width: Get.width,
      height: Get.height * 0.4,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: -50,
            child: BgRotateComponent(
              size: 250,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimension.size_2,
              horizontal: AppDimension.size_3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  pokemon.id,
                  style: AppFonts.bodyMedium(),
                ),
                const SizedBox(
                  height: AppDimension.size_0,
                ),
                Text(
                  pokemon.name,
                  style: AppFonts.headlineSmall(),
                ),
                const SizedBox(
                  height: AppDimension.size_0,
                ),
                Row(
                  children: [
                    ..._buildTypes(),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTypes() {
    final List<Widget> _types = [];

    pokemon.typeofpokemon
        .map(
          (type) => _types.add(
            Row(
              children: [
                Image.asset(
                  '${AppTypePokemonStyle.typePokemon[type]['img']}',
                  height: AppDimension.size_3,
                  color: AppExtension.textColor,
                ),
                Text('${AppTypePokemonStyle.typePokemon[type]['type']}')
              ],
            ),
          ),
        )
        .toList();

    return _types;
  }
}

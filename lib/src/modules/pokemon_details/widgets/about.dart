import 'package:flutter/material.dart';

import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_extension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';
import 'package:pokedex_v2/src/core/theme/app_type_pokemon_style.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';

class About extends StatelessWidget {
  const About({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: AppDimension.size_3,
          ),
          Text(
            'Descrição',
            style: AppFonts.titleLarge(),
          ),
          const SizedBox(
            height: AppDimension.size_1,
          ),
          Text(
            pokemon.xdescription,
            style: AppFonts.bodyMedium(
              color: AppExtension.textLightColor,
            ),
          ),
          const SizedBox(
            height: AppDimension.size_2,
          ),
          Text(
            'Tipo',
            style: AppFonts.titleLarge(),
          ),
          const SizedBox(
            height: AppDimension.size_1,
          ),
          Wrap(
            spacing: AppDimension.size_1,
            runSpacing: AppDimension.size_1,
            children: [
              ..._buildTypes(pokemon.typeofpokemon),
            ],
          ),
          const SizedBox(
            height: AppDimension.size_2,
          ),
          Text(
            'Fraquezas',
            style: AppFonts.titleLarge(),
          ),
          const SizedBox(
            height: AppDimension.size_1,
          ),
          Wrap(
            spacing: AppDimension.size_1,
            runSpacing: AppDimension.size_1,
            children: [
              ..._buildTypes(pokemon.weaknesses),
            ],
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTypes(List<String> types) {
    final List<Widget> _types = [];

    types.map((type) {
      final MaterialColor color = AppTypePokemonStyle.typePokemon[type]['typeColor'];
      _types.add(
        Container(
          decoration: BoxDecoration(
            color: color.shade200,
            borderRadius: BorderRadius.circular(
              AppDimension.size_0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimension.size_0,
              horizontal: AppDimension.size_1,
            ),
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
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
        ),
      );
    }).toList();

    return _types;
  }
}

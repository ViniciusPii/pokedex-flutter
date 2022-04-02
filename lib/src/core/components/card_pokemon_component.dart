import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_extension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';
import 'package:pokedex_v2/src/core/theme/app_type_pokemon_style.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';

import 'bg_rotate_component.dart';

class CardPokemonComponent extends StatelessWidget {
  const CardPokemonComponent({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    final MaterialColor color =
        AppTypePokemonStyle.typePokemon[pokemon.typeofpokemon.first]['typeColor'];

    return Container(
      decoration: BoxDecoration(
        color: color.shade200,
        borderRadius: BorderRadius.circular(
          AppDimension.size_1,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            bottom: -20,
            child: BgRotateComponent(
              size: 120,
              color: color,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimension.size_1,
              horizontal: AppDimension.size_2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      pokemon.id,
                      style: AppFonts.bodySmall(),
                    ),
                    Text(
                      pokemon.name,
                      style: AppFonts.bodyLarge(),
                    ),
                    Row(
                      children: [
                        ..._buildTypes(),
                      ],
                    )
                  ],
                ),
                CachedNetworkImage(
                  imageUrl: pokemon.imageurl,
                  height: 68,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTypes() {
    List<Widget> types = [];

    pokemon.typeofpokemon
        .map(
          (e) => types.add(
            Image.asset(
              AppTypePokemonStyle.typePokemon[e]['img'],
              height: AppDimension.size_3,
              color: AppExtension.textColor,
            ),
          ),
        )
        .toList();

    return types;
  }
}

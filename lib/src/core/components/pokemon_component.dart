import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_v2/src/core/components/bg_rotate_component.dart';
import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';

class PokemonComponent extends StatelessWidget {
  const PokemonComponent({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final PokemonModel pokemon;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BgRotateComponent(
          size: 100,
        ),
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: 0,
          child: Align(
            child: CachedNetworkImage(
              imageUrl: pokemon.imageurl,
              height: AppDimension.size_8,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Align(
            child: Text(
              pokemon.name,
              style: AppFonts.bodySmall(),
            ),
          ),
        )
      ],
    );
  }
}

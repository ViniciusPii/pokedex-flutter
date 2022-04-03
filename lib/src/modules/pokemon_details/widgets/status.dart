import 'package:flutter/material.dart';
import 'package:pokedex_v2/src/core/components/status_pokemon_component.dart';

import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';

class Status extends StatelessWidget {
  const Status({
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
            'Status',
            style: AppFonts.titleLarge(),
          ),
          const SizedBox(
            height: AppDimension.size_3,
          ),
          StatusPokemonComponent(
            title: 'HP',
            value: pokemon.hp,
          ),
          StatusPokemonComponent(
            title: 'Ataque',
            value: pokemon.attack,
          ),
          StatusPokemonComponent(
            title: 'Defesa',
            value: pokemon.defense,
          ),
          StatusPokemonComponent(
            title: 'Ataque Especial',
            value: pokemon.specialAttack,
          ),
          StatusPokemonComponent(
            title: 'Defesa Especial',
            value: pokemon.specialDefense,
          ),
          StatusPokemonComponent(
            title: 'Velocidade',
            value: pokemon.speed,
          ),
        ],
      ),
    );
  }
}

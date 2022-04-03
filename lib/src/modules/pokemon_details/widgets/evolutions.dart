import 'package:flutter/material.dart';

import 'package:pokedex_v2/src/core/components/card_evolution_component.dart';
import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';

class Evolutions extends StatelessWidget {
  const Evolutions({
    Key? key,
    required this.id,
    required this.pokemons,
  }) : super(key: key);

  final String id;
  final List<PokemonModel> pokemons;

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
            'Evoluções',
            style: AppFonts.titleLarge(),
          ),
          const SizedBox(
            height: AppDimension.size_1,
          ),
          ..._buildEvolutionList(),
        ],
      ),
    );
  }

  List<Widget> _buildEvolutionList() {
    if (pokemons.length < 2) {
      return [
        const SizedBox(
          height: AppDimension.size_5,
        ),
        Center(
          child: Text(
            'Este pokemon não possui evoluções!',
            style: AppFonts.bodyLarge(),
          ),
        ),
      ];
    }

    return Iterable<int>.generate(pokemons.length - 1)
        .map(
          (index) => CardEvolutionComponent(
            current: id == '#133' ? pokemons[0] : pokemons[index],
            next: pokemons[index + 1],
            // reason: pokemons[index + 1],
          ),
        )
        .toList();
  }
}

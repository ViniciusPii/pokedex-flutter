import 'package:flutter/material.dart';
import 'package:pokedex_v2/src/core/components/pokemon_component.dart';
import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_extension.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';

class CardEvolutionComponent extends StatelessWidget {
  const CardEvolutionComponent({
    Key? key,
    required this.next,
    required this.current,
  }) : super(key: key);

  final PokemonModel next;
  final PokemonModel current;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: AppDimension.size_2,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          PokemonComponent(
            pokemon: current,
          ),
          Icon(
            Icons.arrow_forward_outlined,
            color: AppExtension.textColor,
          ),
          PokemonComponent(
            pokemon: next,
          ),
        ],
      ),
    );
  }
}

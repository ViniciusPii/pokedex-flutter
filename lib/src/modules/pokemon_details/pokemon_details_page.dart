import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_v2/src/core/theme/app_extension.dart';
import 'package:pokedex_v2/src/core/theme/app_type_pokemon_style.dart';
import 'package:pokedex_v2/src/modules/pokemon_details/widgets/content.dart';
import 'package:pokedex_v2/src/modules/pokemon_details/widgets/header_content.dart';
import 'pokemon_details_controller.dart';

class PokemonDetailsPage extends GetView<PokemonDetailsController> {
  const PokemonDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MaterialColor color =
        AppTypePokemonStyle.getTypeColor(controller.pokemon.typeofpokemon.first);

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: color.shade200,
        foregroundColor: AppExtension.textColor,
      ),
      body: Stack(
        children: [
          HeaderContent(
            color: color,
            pokemon: controller.pokemon,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Content(
              color: color,
              pokemon: controller.pokemon,
              evolutions: controller.evolutions,
            ),
          )
        ],
      ),
    );
  }
}

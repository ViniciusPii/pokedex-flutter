import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_v2/src/core/components/card_pokemon_component.dart';
import 'package:pokedex_v2/src/core/components/status_bar_component.dart';
import 'package:pokedex_v2/src/core/components/text_filed_component.dart';
import 'package:pokedex_v2/src/core/theme/app_extension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';
import 'pokemon_list_controller.dart';
import '/src/core/theme/app_dimension.dart';

class PokemonListPage extends GetView<PokemonListController> {
  const PokemonListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatusBarComponent(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppDimension.size_2,
              horizontal: AppDimension.size_3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Pokedex',
                  style: AppFonts.headlineSmall(),
                ),
                Text(
                  'Procure seu pokemon para saber mais informações!',
                  style: AppFonts.bodyMedium(
                    color: AppExtension.textLightColor,
                  ),
                ),
                const SizedBox(
                  height: AppDimension.size_3,
                ),
                TextFiledComponent(
                  hint: 'Procure seu pokemon',
                  controller: controller.nameEC,
                  func: (_) => controller.getPokemonByName(),
                ),
                const SizedBox(
                  height: AppDimension.size_5,
                ),
                Obx(
                  () => Expanded(
                    child: ListView.separated(
                      itemBuilder: (_, int index) {
                        final PokemonModel pokemon = controller.pokemons[index];
                        return CardPokemonComponent(
                          pokemon: pokemon,
                        );
                      },
                      separatorBuilder: (_, __) => const SizedBox(
                        height: AppDimension.size_2,
                      ),
                      itemCount: controller.pokemons.length,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

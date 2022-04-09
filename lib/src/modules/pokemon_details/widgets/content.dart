import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:pokedex_v2/src/core/theme/app_colors.dart';
import 'package:pokedex_v2/src/core/theme/app_dimension.dart';
import 'package:pokedex_v2/src/core/theme/app_extension.dart';
import 'package:pokedex_v2/src/core/theme/app_fonts.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';
import 'package:pokedex_v2/src/modules/pokemon_details/widgets/about.dart';
import 'package:pokedex_v2/src/modules/pokemon_details/widgets/evolutions.dart';
import 'package:pokedex_v2/src/modules/pokemon_details/widgets/status.dart';

class Content extends StatelessWidget {
  const Content({
    Key? key,
    required this.color,
    required this.pokemon,
    required this.evolutions,
  }) : super(key: key);

  final MaterialColor color;
  final PokemonModel pokemon;
  final List<PokemonModel> evolutions;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(AppDimension.size_3),
              topRight: Radius.circular(AppDimension.size_3),
            ),
          ),
          height: Get.height * 0.61,
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppDimension.size_2,
                    horizontal: AppDimension.size_3,
                  ),
                  child: TabBar(
                    labelStyle: AppFonts.bodyMedium(),
                    labelColor: AppExtension.textColor,
                    indicatorColor: color.shade200,
                    unselectedLabelColor: AppExtension.textColor,
                    tabs: const [
                      Tab(
                        text: 'Sobre',
                      ),
                      Tab(
                        text: 'Evoluções',
                      ),
                      Tab(
                        text: 'Status',
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      About(
                        pokemon: pokemon,
                      ),
                      Evolutions(
                        pokemons: evolutions,
                        id: pokemon.id,
                      ),
                      Status(
                        pokemon: pokemon,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          top: -150,
          left: 0,
          right: 0,
          child: Align(
            child: CachedNetworkImage(
              imageUrl: pokemon.imageurl,
              width: 180,
            ),
          ),
        ),
      ],
    );
  }
}

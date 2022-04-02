import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'pokemon_list_controller.dart';
import '/src/core/theme/app_dimension.dart';

class PokemonListPage extends GetView<PokemonListController> {
  const PokemonListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: AppDimension.size_2,
          horizontal: AppDimension.size_3,
        ),
        child: Center(
          child: Text('Pokedex'),
        ),
      ),
    );
  }
}

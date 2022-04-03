import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';

import 'package:pokedex_v2/src/services/pokemon/pokemon_service.dart';

class PokemonListController extends GetxController {
  PokemonListController({
    required PokemonService pokemonService,
  }) : _pokemonService = pokemonService;

  final PokemonService _pokemonService;

  final TextEditingController nameEC = TextEditingController();

  final RxList<PokemonModel> _pokemons = RxList();

  List<PokemonModel> get pokemons => _pokemons;

  @override
  void onInit() {
    super.onInit();
    getAll();
  }

  @override
  void onClose() {
    super.onClose();
    nameEC.dispose();
  }

  Future<void> getAll() async => _pokemons(await _pokemonService.getGenerationPokemons(8));

  Future<void> getPokemonByName() async =>
      _pokemons(await _pokemonService.getPokemonByName(nameEC.text, 8));

  void goToDetails(PokemonModel pokemon) {
    nameEC.clear();
    Get.focusScope!.unfocus();
    Get.toNamed(
      'pokemon/details',
      arguments: {
        'pokemon': pokemon,
      },
    )!
        .whenComplete(() => getAll());
  }
}

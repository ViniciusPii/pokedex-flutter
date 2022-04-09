import 'package:get/get.dart';

import 'package:pokedex_v2/src/models/pokemon_model.dart';
import 'package:pokedex_v2/src/services/pokemon/pokemon_service.dart';

class PokemonDetailsController extends GetxController {
  PokemonDetailsController({
    required PokemonService pokemonService,
  }) : _pokemonService = pokemonService;

  final PokemonService _pokemonService;

  PokemonModel pokemon = Get.arguments['pokemon'];

  final RxList<PokemonModel> _evolutions = RxList();

  List<PokemonModel> get evolutions => _evolutions;

  @override
  void onInit() {
    super.onInit();
    getEvolutions();
  }

  Future<void> getEvolutions() async =>
      _evolutions(await _pokemonService.getEvolutions(pokemon.evolutions));
}

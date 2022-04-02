import 'package:pokedex_v2/src/models/pokemon_model.dart';

import '/src/repositories/pokemon/pokemon_repository.dart';

import 'pokemon_service.dart';

class PokemonServiceImpl implements PokemonService {
  PokemonServiceImpl({
    required PokemonRepository pokemonRepository,
  }) : _pokemonRepository = pokemonRepository;

  final PokemonRepository _pokemonRepository;

  @override
  Future<List<PokemonModel>> getAll() => _pokemonRepository.getAll();

  @override
  Future<List<PokemonModel>> getGenerationPokemons(int generation) async {
    final List<PokemonModel> _pokemonGeneration = await getAll();

    if (generation == 1) return _pokemonGeneration.getRange(0, 151).toList();
    if (generation == 2) return _pokemonGeneration.getRange(151, 251).toList();
    if (generation == 3) return _pokemonGeneration.getRange(251, 386).toList();
    if (generation == 4) return _pokemonGeneration.getRange(386, 493).toList();
    if (generation == 5) return _pokemonGeneration.getRange(493, 649).toList();
    if (generation == 6) return _pokemonGeneration.getRange(649, 721).toList();
    if (generation == 7) return _pokemonGeneration.getRange(721, 809).toList();

    return _pokemonGeneration;
  }

  @override
  Future<List<PokemonModel>> getPokemonByName(String name, int generation) async {
    final _pokemonByName = await getGenerationPokemons(generation);
    return _pokemonByName
        .where((element) => element.name.toLowerCase().contains(name.toLowerCase()))
        .toList();
  }
}

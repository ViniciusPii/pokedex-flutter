import 'package:pokedex_v2/src/models/pokemon_model.dart';

import '/src/repositories/pokemon/pokemon_repository.dart';

import 'pokemon_service.dart';

class PokemonServiceImpl implements PokemonService {
  PokemonServiceImpl({
    required PokemonRepository pokemonRepository,
  }) : _pokemonRepository = pokemonRepository;

  final PokemonRepository _pokemonRepository;

  List<PokemonModel> _pokemons = [];

  @override
  Future<List<PokemonModel>> getAll() => _pokemonRepository.getAll();

  @override
  Future<List<PokemonModel>> getGenerationPokemons(int generation) async {
    _pokemons = await getAll();

    if (generation == 1) return _pokemons.getRange(0, 151).toList();
    if (generation == 2) return _pokemons.getRange(151, 251).toList();
    if (generation == 3) return _pokemons.getRange(251, 386).toList();
    if (generation == 4) return _pokemons.getRange(386, 493).toList();
    if (generation == 5) return _pokemons.getRange(493, 649).toList();
    if (generation == 6) return _pokemons.getRange(649, 721).toList();
    if (generation == 7) return _pokemons.getRange(721, 809).toList();

    return _pokemons;
  }

  @override
  Future<List<PokemonModel>> getPokemonByName(String name, int generation) async {
    _pokemons = await getGenerationPokemons(generation);
    return _pokemons
        .where((element) =>
            element.name.toLowerCase().contains(name.toLowerCase()) || element.id.contains(name))
        .toList();
  }

  @override
  Future<List<PokemonModel>> getEvolutions(List<String> evolutions) async {
    _pokemons = await getAll();
    final List<PokemonModel> _evolutions = [];

    evolutions
        .map((e) => _evolutions.add(
              _pokemons.firstWhere((element) => element.id == e),
            ))
        .toList();
    return _evolutions;
  }
}

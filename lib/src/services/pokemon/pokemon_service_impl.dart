import 'package:pokedex_v2/src/models/pokemon_model.dart';

import '/src/repositories/pokemon/pokemon_repository.dart';

import 'pokemon_service.dart';

class PokemonServiceImpl implements PokemonService {
  PokemonServiceImpl({
    required PokemonRepository pokemonRepository,
  }) : _pokemonRepository = pokemonRepository;

  final PokemonRepository _pokemonRepository;

  @override
  Future<List<PokemonModel>> getAll() async {
    final List<PokemonModel> _pokeList = await _pokemonRepository.getAll();
    return _pokeList.getRange(0, 151).toList();
  }
}

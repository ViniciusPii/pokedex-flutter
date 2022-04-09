import 'package:pokedex_v2/src/models/pokemon_model.dart';

abstract class PokemonService {
  Future<List<PokemonModel>> getAll();
  Future<List<PokemonModel>> getGenerationPokemons(int generation);
  Future<List<PokemonModel>> getEvolutions(List<String> evolutions);
  Future<List<PokemonModel>> getPokemonByName(String name, int generation);
}

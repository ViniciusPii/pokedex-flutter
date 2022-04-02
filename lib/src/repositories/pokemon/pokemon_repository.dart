import 'package:pokedex_v2/src/models/pokemon_model.dart';

abstract class PokemonRepository {
  Future<List<PokemonModel>> getAll();
}

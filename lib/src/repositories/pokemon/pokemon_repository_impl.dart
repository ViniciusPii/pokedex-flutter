import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:pokedex_v2/src/models/pokemon_model.dart';

import 'pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  @override
  Future<List<PokemonModel>> getAll() async {
    final String response = await rootBundle.loadString('assets/pokemons.json');

    final responseMap = jsonDecode(response);

    return responseMap.map<PokemonModel>((pokemon) => PokemonModel.fromMap(pokemon)).toList();
  }
}

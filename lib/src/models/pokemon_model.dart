import 'dart:convert';

class PokemonModel {
  PokemonModel({
    required this.id,
    required this.name,
    required this.imageurl,
    required this.typeofpokemon,
  });

  final String id;
  final String name;
  final String imageurl;
  final List<String> typeofpokemon;

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'imageurl': imageurl,
      'typeofpokemon': typeofpokemon,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      imageurl: map['imageurl'] ?? '',
      typeofpokemon: List<String>.from(map['typeofpokemon']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) => PokemonModel.fromMap(json.decode(source));
}

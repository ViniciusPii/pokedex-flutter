import 'dart:convert';

class PokemonModel {
  PokemonModel({
    required this.name,
  });

  final String name;

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) => PokemonModel.fromMap(json.decode(source));
}

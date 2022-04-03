import 'dart:convert';

class PokemonModel {
  PokemonModel({
    required this.id,
    required this.name,
    required this.imageurl,
    required this.xdescription,
    required this.weaknesses,
    required this.evolutions,
    required this.typeofpokemon,
  });

  final String id;
  final String name;
  final String imageurl;
  final String xdescription;
  final List<String> weaknesses;
  final List<String> evolutions;
  final List<String> typeofpokemon;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'id': id});
    result.addAll({'name': name});
    result.addAll({'imageurl': imageurl});
    result.addAll({'xdescription': xdescription});
    result.addAll({'weaknesses': weaknesses});
    result.addAll({'evolutions': evolutions});
    result.addAll({'typeofpokemon': typeofpokemon});

    return result;
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      imageurl: map['imageurl'] ?? '',
      xdescription: map['xdescription'] ?? '',
      weaknesses: List<String>.from(map['weaknesses']),
      evolutions: List<String>.from(map['evolutions']),
      typeofpokemon: List<String>.from(map['typeofpokemon']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) => PokemonModel.fromMap(json.decode(source));
}

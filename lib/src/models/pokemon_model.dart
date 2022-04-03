import 'dart:convert';

class PokemonModel {
  PokemonModel({
    required this.hp,
    required this.id,
    required this.speed,
    required this.attack,
    required this.defense,
    required this.name,
    required this.imageurl,
    required this.specialAttack,
    required this.specialDefense,
    required this.xdescription,
    required this.weaknesses,
    required this.evolutions,
    required this.typeofpokemon,
  });

  final int hp;
  final String id;
  final int speed;
  final int attack;
  final int defense;
  final String name;
  final String imageurl;
  final int specialAttack;
  final int specialDefense;
  final String xdescription;
  final List<String> weaknesses;
  final List<String> evolutions;
  final List<String> typeofpokemon;

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'hp': hp});
    result.addAll({'id': id});
    result.addAll({'speed': speed});
    result.addAll({'attack': attack});
    result.addAll({'defense': defense});
    result.addAll({'name': name});
    result.addAll({'imageurl': imageurl});
    result.addAll({'specialAttack': specialAttack});
    result.addAll({'specialDefense': specialDefense});
    result.addAll({'xdescription': xdescription});
    result.addAll({'weaknesses': weaknesses});
    result.addAll({'evolutions': evolutions});
    result.addAll({'typeofpokemon': typeofpokemon});

    return result;
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      hp: map['hp']?.toInt() ?? 0,
      id: map['id'] ?? '',
      speed: map['speed']?.toInt() ?? 0,
      attack: map['attack']?.toInt() ?? 0,
      defense: map['defense']?.toInt() ?? 0,
      name: map['name'] ?? '',
      imageurl: map['imageurl'] ?? '',
      specialAttack: map['special_attack']?.toInt() ?? 0,
      specialDefense: map['special_defense']?.toInt() ?? 0,
      xdescription: map['xdescription'] ?? '',
      weaknesses: List<String>.from(map['weaknesses']),
      evolutions: List<String>.from(map['evolutions']),
      typeofpokemon: List<String>.from(map['typeofpokemon']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PokemonModel.fromJson(String source) => PokemonModel.fromMap(json.decode(source));
}

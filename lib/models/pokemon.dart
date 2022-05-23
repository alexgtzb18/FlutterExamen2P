// To parse this JSON data, do
//
//     final pokemonResponse = pokemonResponseFromMap(jsonString);

import 'dart:convert';

class Pokemon {
    Pokemon({
        required this.id,
        required this.num,
        required this.name,
        required this.img,
        required this.type,
        required this.height,
        required this.weight,
    });

    int id;
    String num;
    String name;
    String img;
    List<Type> type;
    String height;
    String weight;

    factory Pokemon.fromJson(String str) => Pokemon.fromMap(json.decode(str));

    factory Pokemon.fromMap(Map<String, dynamic> json) => Pokemon(
        id: json["id"],
        num: json["num"],
        name: json["name"],
        img: json["img"],
        type: List<Type>.from(json["type"].map((x) => typeValues.map[x])),
        height: json["height"],
        weight: json["weight"],
    );
}

enum Type { FIRE, ICE, FLYING, PSYCHIC, WATER, GROUND, ROCK, ELECTRIC, GRASS, FIGHTING, POISON, BUG, FAIRY, GHOST, DARK, STEEL, DRAGON, NORMAL }

final typeValues = EnumValues({
    "Bug": Type.BUG,
    "Dark": Type.DARK,
    "Dragon": Type.DRAGON,
    "Electric": Type.ELECTRIC,
    "Fairy": Type.FAIRY,
    "Fighting": Type.FIGHTING,
    "Fire": Type.FIRE,
    "Flying": Type.FLYING,
    "Ghost": Type.GHOST,
    "Grass": Type.GRASS,
    "Ground": Type.GROUND,
    "Ice": Type.ICE,
    "Normal": Type.NORMAL,
    "Poison": Type.POISON,
    "Psychic": Type.PSYCHIC,
    "Rock": Type.ROCK,
    "Steel": Type.STEEL,
    "Water": Type.WATER
});

EnumValues(Map<String, Type> map) {
}

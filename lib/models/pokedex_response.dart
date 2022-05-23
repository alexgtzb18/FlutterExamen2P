// To parse this JSON data, do
//
//     final pokemonResponse = pokemonResponseFromMap(jsonString);

import 'dart:convert';

import 'models.dart';

class PokedexResponse {
    PokedexResponse({
        required this.pokemon,
    });

    List<Pokemon> pokemon;

    factory PokedexResponse.fromJson(String str) => PokedexResponse.fromMap(json.decode(str));

    factory PokedexResponse.fromMap(Map<String, dynamic> json) => PokedexResponse(
        pokemon: List<Pokemon>.from(json["pokemon"].map((x) => Pokemon.fromMap(x))),
    );
}


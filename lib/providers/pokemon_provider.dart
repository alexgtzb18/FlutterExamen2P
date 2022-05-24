// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:flutter_examen_2p/models/models.dart';
// import 'package:http/http.dart' as http;

// class PokemonProvider extends ChangeNotifier {
//   String _baseUrl = 'raw.githubusercontent.com';

//   PokemonProvider() {
//     print('PokemonProvider inicializado');

//     this.getPokemon();
//   }

//   getPokemon() async {
//     var url =
//         Uri.https(_baseUrl, '/Biuni/PokemonGO-Pokedex/master/pokedex.json');

//         final response = await http.get(url);
//         final pokedexResponse = PokedexResponse.fromJson(response.body);
//         print(pokedexResponse.pokemon[1].name);
//   }
// }

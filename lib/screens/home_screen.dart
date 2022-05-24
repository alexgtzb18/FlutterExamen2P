import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../widgets/widgets.dart';
import '../models/models.dart';
import 'screens.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List pokemon;

  @override
  void initState() {
    // Iniciamos el traer el api
    pokemon = [];
    super.initState();
    PickPokemon();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PokeApp'),
        elevation: 10,
      ),
      body: ListView.builder(
        itemCount: pokemon.length,
        itemBuilder: (context, index) {
          return PokemonTile(
            // ontapAction: SafeArea,
            ontapAction: Navigator.push(context, MaterialPageRoute(builder: (_) => DetailScreen(heroTag: index, pokemonDetail: pokemon[index],
                        color: pokemon[index]['type'][0] == "Grass" ? Colors.greenAccent : pokemon[index]['type'][0] == "Fire" ? Colors.redAccent
                            : pokemon[index]['type'][0] == "Water" ? Colors.blue : pokemon[index]['type'][0] == "Poison" ? Colors.deepPurpleAccent
                            : pokemon[index]['type'][0] == "Electric" ? Colors.amber : pokemon[index]['type'][0] == "Rock" ? Colors.grey
                            : pokemon[index]['type'][0] == "Ground" ? Colors.brown : pokemon[index]['type'][0] == "Psychic" ? Colors.indigo
                            : pokemon[index]['type'][0] == "Fighting" ? Colors.orange : pokemon[index]['type'][0] == "Bug" ? Colors.lightGreenAccent
                            : pokemon[index]['type'][0] == "Ghost" ? Colors.deepPurple : pokemon[index]['type'][0] == "Normal" ? Colors.white70 : Colors.pink,
                        ))),
            pokemonPicture: pokemon[index]['img'],
            pokemonName: pokemon[index]['name'],
            pokemonType: pokemon[index]['type'][0],
            bgColor: pokemon[index]['type'][0] == 'Grass'
                ? Colors.green
                : pokemon[index]['type'][0] == "Fire"
                    ? Colors.redAccent
                    : pokemon[index]['type'][0] == "Water"
                        ? Colors.cyan.shade700
                        : pokemon[index]['type'][0] == "Poison"
                            ? Colors.purple
                            : pokemon[index]['type'][0] == "Electric"
                                ? Colors.amber
                                : pokemon[index]['type'][0] == "Rock"
                                    ? Colors.brown.shade800
                                    : pokemon[index]['type'][0] == "Ground"
                                        ? Colors.brown.shade400
                                        : pokemon[index]['type'][0] == "Psychic"
                                            ? Colors.pink.shade800
                                            : pokemon[index]['type'][0] ==
                                                    "Fighting"
                                                ? Colors.red.shade300
                                                : pokemon[index]['type'][0] ==
                                                        "Bug"
                                                    ? Colors.greenAccent
                                                    : pokemon[index]['type']
                                                                [0] ==
                                                            "Ghost"
                                                        ? Colors
                                                            .deepPurpleAccent
                                                        : pokemon[index]['type']
                                                                    [0] ==
                                                                "Normal"
                                                            ? Colors.grey
                                                            : Colors.pink,
          );
        },
      ),
    );
  }

  void PickPokemon() {
    var url = Uri.https('raw.githubusercontent.com',
        '/Biuni/PokemonGO-Pokedex/master/pokedex.json');
    http.get(url).then((value) {
      var data = jsonDecode(value.body);
      pokemon = data['pokemon'];
      setState(() {});
    });
  }
}



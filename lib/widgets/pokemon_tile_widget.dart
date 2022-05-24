import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonTile extends StatelessWidget {
  const PokemonTile(
      {Key? key,
      required this.bgColor,
      required this.pokemonName,
      required this.pokemonType,
      required this.pokemonPicture,
      required this.ontapAction})
      : super(key: key);

  final Color bgColor;
  final String pokemonName;
  final String pokemonType;
  final String pokemonPicture;
  final dynamic ontapAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Stack(
        children: [
          ListTile(
            title: Padding(
                padding: const EdgeInsets.only(top: 30, left: 100),
                child: Text(
                  pokemonName,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Positioned(
              bottom: -8,
              left: 250,
              child: Container(
                  child: CachedNetworkImage(imageUrl: pokemonPicture))),
          Positioned(
            child: Image.asset('assets/pokeballGrande.png'),
          ),
          Positioned(
              top: 70,
              left: 120,
              child: Container(
                width: 50,
                height: 20,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.2),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: Text(
                  pokemonType,
                  style: TextStyle(color: Colors.white),
                )),
              ))
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PokemonTile extends StatelessWidget {
  const PokemonTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.green),
      child: Stack(
        children: [
          ListTile(
            title: Padding(
                padding: EdgeInsets.only(top: 35, left: 100),
                child: Text(
                  'Bulbasur',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                )),
          ),
          Positioned(bottom: -8, left: 250, child: Image.asset('assets/001.png')),
          Positioned(child: Image.asset('assets/pokeballGrande.png',))
        ],
      ),
    );
  }
}

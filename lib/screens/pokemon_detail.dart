import 'package:flutter/material.dart';

class PokemonDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bulbasur'),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: 50,
              child: Image.asset('assets/001.png', height: 200, width: 200,),
            )
          ],
        ));
  }
}

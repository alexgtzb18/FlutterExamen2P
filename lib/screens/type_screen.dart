import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class TypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fuego'),
      ),
      body: ListView(
        children: [PokemonTile()],
      ),
    );
  }
}

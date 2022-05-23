import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokeapp'),
        elevation: 20,
      ),
      body: ListView(
        children: [
          CardTile(tipo: 'Planta', bgColor: Colors.green),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_examen_2p/models/models.dart';
import 'package:flutter_examen_2p/providers/pokemon_provider.dart';
import 'package:provider/provider.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokeapp',
      initialRoute: 'home',
      routes: {
        'home': (_) => HomeScreen(),
        // 'types': (_) => TypeScreen(),
        'detail': (_) => DetailScreen(),
        // 'login': (_) => LoginScreen(),
      },
      theme: ThemeData.light()
          .copyWith(appBarTheme: AppBarTheme(color: Colors.amber)),
    );
  }
}

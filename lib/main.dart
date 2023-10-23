// main.dart
import 'package:flutter/material.dart';
import 'package:pokedex/pokemon_screen.dart';

void main() {
  runApp(PokedexApp());
}

class PokedexApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokedex',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: PokemonScreen(),
    );
  }
}

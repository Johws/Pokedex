import 'package:flutter/material.dart';
import 'package:pokedex/pages/listaPokedex/listaPokedexViews.dart';
import 'package:pokedex/pages/listaPokedex/pokedexController.dart';
import 'package:provider/provider.dart';

import 'package:pokedex/models/listaPokedex.dart';

void main() {
  runApp(
    ListenableProvider(
      create: (context) =>
          pokedexController(repository: ListaPokedex())..load(),
      child: MaterialApp(
        home: PokemonDetailScreen(),
      ),
    ),
  );
}

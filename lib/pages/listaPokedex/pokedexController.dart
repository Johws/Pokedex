import 'package:flutter/material.dart';
import 'package:pokedex/models/listaPokedex.dart';
import 'package:pokedex/models/listaPokedexRepository.dart';

class pokedexController extends ChangeNotifier {
  final listaPokedex repository;
  List<listaPokedexRepository> pokemonList = [];
  pokedexController({required this.repository});

  void load() {
    repository.carregarLista().then((value) {
      pokemonList = value;
    }).whenComplete(() {
      notifyListeners();
    });
  }
}

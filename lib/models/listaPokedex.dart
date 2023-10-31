import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pokedex/models/listaPokedexRepository.dart';

class ListaPokedex extends ChangeNotifier {
  Future<List<listaPokedexRepository>> carregarLista() {
    final response = Uri.parse(
        'https://rafaelbarbosatec.github.io/api/pokemon/pokemons.json');
    return http.get(response).then((value) {
      if (value.statusCode == 200) {
        List json = jsonDecode(value.body);
        List<listaPokedexRepository> lista = json.map((e) {
          return listaPokedexRepository.fromJson(e);
        }).toList();
        notifyListeners(); // Notifique os ouvintes após a atualização da lista
        return lista;
      } else {
        throw Exception('Failed to load data');
      }
    });
  }
}

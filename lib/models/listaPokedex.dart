import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:pokedex/models/listaPokedexRepository.dart';

class listaPokedex {
  Future<List<listaPokedexRepository>> carregarLista() {
    final response = Uri.parse(
        'https://rafaelbarbosatec.github.io/api/pokemon/pokemons.json');
    return http.get(response).then((value) {
      if (value.statusCode == 200) {
        List json = jsonDecode(value.body);
        return json.map((e) {
          return listaPokedexRepository.fromJson(e);
        }).toList();
      }
      return [];
    });
  }
}

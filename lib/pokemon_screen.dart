import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:pokedex/PokemonDetailScreen.dart';

class PokemonScreen extends StatefulWidget {
  @override
  PokemonScreenState createState() => PokemonScreenState();
}

class PokemonScreenState extends State<PokemonScreen> {
  // Declaração da lista de Pokémon
  List<dynamic> pokemonList = [];

  @override
  void initState() {
    super.initState();
    fetchPokemonList();
  }

  Future<void> fetchPokemonList() async {
    // Função para buscar a lista de Pokémon da API
    final response = await http.get(Uri.parse(
        'https://rafaelbarbosatec.github.io/api/pokemon/pokemons.json'));
    /*try {
      setState(() {
        // Atualiza o estado com a lista de Pokémon obtida da API
        pokemonList = json.decode(response.body);
      });
    } catch (e) {
      throw Exception('Failed to load Pokémon list');
    }*/
    if (response.statusCode == 200) {
      setState(() {
        // Atualiza o estado com a lista de Pokémon obtida da API
        pokemonList = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load Pokémon list');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Pokedex',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        // Cria um ListView usando a lista de Pokémon
        itemCount: pokemonList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
              height: 120,
              margin: EdgeInsets.all(3.0), // Margem entre os cartões
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.purple.shade500, Colors.purple.shade200],
                ),
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(1, 3), // changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Image.network(
                              pokemonList[index]['thumbnailImage'],
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              pokemonList[index]['name'],
                              textAlign: TextAlign.left,
                              style: TextStyle(color: Colors.white),
                              // Alinhe o texto à direita
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              '#${pokemonList[index]['number']}',
                              textAlign: TextAlign.right,
                              style: TextStyle(color: Colors.white),
                              // Alinhe o texto à direita
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        // Navegue para a tela de detalhes quando um Pokémon é clicado
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PokemonDetailScreen(
                                pokemon: pokemonList[index]),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }
}

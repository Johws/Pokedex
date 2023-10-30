import 'package:flutter/material.dart';
import 'package:pokedex/models/listaPokedexRepository.dart';

class DetailsPokemonScreen extends StatelessWidget {
  final listaPokedexRepository pokemon;

  DetailsPokemonScreen({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          pokemon.name ?? '',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.black, // Define o fundo como preto
        ),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                  20), // Borda circular para se assemelhar a uma figurinha
              border: Border.all(
                  color: Colors.black,
                  width: 2), // Adiciona uma borda preta ao redor do contêiner
            ),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // Organiza os itens à esquerda
              mainAxisSize:
                  MainAxisSize.min, // Reduz o tamanho vertical da coluna
              children: [
                Center(
                  child: Image.network(
                    pokemon.thumbnailImage ?? '',
                    width: 150,
                    height: 150,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Número: ${pokemon.number ?? ''}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  'Altura: ${pokemon.height ?? ''}',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 10),
                Text(
                  'Habilidades:',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: pokemon.abilities != null
                      ? pokemon.abilities!
                          .map((ability) => Text(
                                '- $ability',
                                style: TextStyle(fontSize: 18),
                              ))
                          .toList()
                      : [
                          Text('Nenhuma habilidade encontrada',
                              style: TextStyle(fontSize: 18))
                        ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

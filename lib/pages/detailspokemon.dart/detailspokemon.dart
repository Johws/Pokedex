import 'package:flutter/material.dart';
import 'package:pokedex/models/listaPokedexRepository.dart';

class PokemonDetails extends StatelessWidget {
  final listaPokedexRepository pokemon;

  PokemonDetails({Key? key, required this.pokemon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          title: Text(
            'Pokemon Details',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(20), // Adiciona margens ao redor do conteúdo
            padding: EdgeInsets.all(
                30), // Adiciona preenchimento interno ao conteúdo
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ), // Adiciona um espaço em cima da imagem
                Center(
                  child: Image.network(
                    pokemon.thumbnailImage ?? '',
                    width:
                        200, // Ajusta o tamanho da imagem conforme necessário
                    height:
                        200, // Ajusta o tamanho da imagem conforme necessário
                  ),
                ),
                ListTile(
                  title: Text(
                    '${pokemon.name ?? ''} - ${pokemon.number ?? ''}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),

                ListTile(
                  title: Text(
                    'Detalhes: ${pokemon.description ?? ''}',
                    textAlign: TextAlign.left,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Altura: ${pokemon.height ?? ''}',
                    textAlign: TextAlign.left,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Habilidade: ${pokemon.abilities ?? ''}',
                    textAlign: TextAlign.left,
                  ),
                ),
                ListTile(
                  title: Text(
                    'Tipo: ${pokemon.type ?? ''}',
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

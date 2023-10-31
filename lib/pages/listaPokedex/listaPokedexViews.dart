import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pokedex/models/listaPokedexRepository.dart';
import 'package:pokedex/pages/detailspokemon.dart/detailspokemon.dart';
import 'package:pokedex/pages/listaPokedex/pokedexController.dart';

class PokemonDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Pokemon',
          style: TextStyle(color: Colors.white),
        ), // Define o título da barra de aplicativos como o nome do Pokémon
      ),
      body: Consumer<pokedexController>(
        builder: (context, controller, child) {
          return ListView.builder(
            itemCount: controller.pokemonList.length,
            itemBuilder: (context, index) {
              listaPokedexRepository item = controller.pokemonList[index];
              return Card(
                child: ListTile(
                  onTap: () {
                    // Navegar para a tela DetailsPokemon ao pressionar o item
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PokemonDetails(pokemon: item),
                      ),
                    );
                  },
                  leading: Image.network(
                    item.thumbnailImage ??
                        '', // Exibe a imagem do Pokémon a partir do JSON
                    width: 50, // Ajuste a largura conforme necessário
                    height: 50, // Ajuste a altura conforme necessário
                  ),
                  title: Text(
                    '${item.name ?? ''} - ${item.number ?? ''}', // Exibe o nome e o número do Pokémon
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text(
                          "Altura: ${item.height ?? ''}"), // Exibe a altura do Pokémon
                      SizedBox(
                          width: 20), // Adiciona um espaço entre os elementos
                      Text(
                          "Habilidades: ${item.abilities?.join(", ") ?? ''}"), // Exibe as habilidades do Pokémon
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

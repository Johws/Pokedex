import 'package:flutter/material.dart';
import 'package:pokedex/pages/listaPokedex/pokedexController.dart';
import 'package:provider/provider.dart';
import 'package:pokedex/models/listaPokedexRepository.dart';

class PokemonDetails extends StatelessWidget {
  const PokemonDetails({super.key, required pokemon});

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<pokedexController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          'Pokemon',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Consumer<pokedexController>(
        builder: (context, controller, child) {
          return ListView.builder(
            itemCount: controller.pokemonList.length,
            itemBuilder: (context, index) {
              listaPokedexRepository item = controller.pokemonList[index];
              return Card(
                child: ListTile(
                  leading: Image.network(
                    item.thumbnailImage ?? '',
                    width: 50,
                    height: 50,
                  ),
                  title: Text(
                    '${item.name ?? ''} - ${item.number ?? ''}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      Text("Altura: ${item.height ?? ''}"),
                      SizedBox(width: 20),
                      Text("Habilidades: ${item.abilities?.join(", ") ?? ''}"),
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

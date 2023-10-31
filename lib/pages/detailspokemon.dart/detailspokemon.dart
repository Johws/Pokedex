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
        child: Column(
          children: [
            ListTile(
              leading: Image.network(
                pokemon.thumbnailImage ?? '',
                width: 100,
                height: 100,
              ),
              title: Text(
                '${pokemon.name ?? ''} - ${pokemon.number ?? ''}',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Height: ${pokemon.height ?? ''}',
              ),
            ),
            ListTile(
              title: Text(
                'Abilities: ${pokemon.abilities?.join(", ") ?? ''}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class PokemonDetailScreen extends StatelessWidget {
  final dynamic pokemon;

  const PokemonDetailScreen({super.key, this.pokemon});

  // Construtor para a tela de detalhes do Pokémon

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(
          pokemon['name'],
          style: TextStyle(color: Colors.white),
        ), // Define o título da barra de aplicativos como o nome do Pokémon
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            margin: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.purple.shade200, Colors.purple.shade800],
              ),
              borderRadius: BorderRadius.circular(60.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 6,
                  blurRadius: 10,
                  offset: Offset(2, 6),
                ),
              ],
            ),
            child: Image.network(
              pokemon['thumbnailImage'],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.purple.shade200, Colors.purple.shade800],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 5,
                        offset: Offset(1, 3),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 5,
                  right: 5,
                  top: 20,
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 3),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        'Descricao: ${pokemon['description']}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  right: 5,
                  top: 135,
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 3),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        'Habilidades: ${pokemon['abilities']}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  right: 5,
                  top: 183,
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 3),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        'Fraqueza: ${pokemon['weakness']}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  right: 5,
                  top: 230,
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 3),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        'Tipo: ${pokemon['type']}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 5,
                  right: 5,
                  top: 275,
                  child: Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(1, 3),
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        'Altura: ${pokemon['height']}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

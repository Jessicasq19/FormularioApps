import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplicativo Filmes'),
        ),
        body: Column(
          children: [
            Filmes("Harry Potter",
                "https://br.web.img3.acsta.net/medias/nmedia/18/95/59/60/20417256.jpg"),
            Filmes("Jogos Vorazes",
                "https://www.kinoplex.com.br/filmes/images/cartaz/262x388/jogos-vorazes-a-cantiga-dos-passaros-e-das-serpentes.jpg"),
            Filmes("O preço do amanhã",
                "https://br.web.img2.acsta.net/medias/nmedia/18/87/36/43/19874732.jpg"),
            Filmes("Avangers",
                "https://play-lh.googleusercontent.com/VA-1OSRIsi9hCg-ILUbyQyedhUZLoMAs9W59RwOFA5nePcLUuGvMlyeg223iil1oB9BS"),
          ],
        ),
      ),
    );
  }
}

class Filmes extends StatelessWidget {
  final String filme;
  final String img;
  const Filmes(this.filme, this.img, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(color: Colors.blue, height: 140),
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.grey,
                  height: 100,
                  width: 80,
                  child: Image.network(
                    img,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  filme,
                  style: TextStyle(fontSize: 22),
                ),
                ElevatedButton(
                    onPressed: () {
                      print("Botão pressionado");
                    },
                    child: Icon(Icons.arrow_drop_up)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

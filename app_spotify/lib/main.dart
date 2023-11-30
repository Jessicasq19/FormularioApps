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
          title: Text('Aplicativo Música'),
        ),
        body: Column(
          children: [
            Musicas("Diamonds - Rihanna",
                "https://i1.sndcdn.com/artworks-QiMP2sXAHdlnt6gV-OvjiBw-t500x500.jpg"),
            Musicas("Set Fire to the rain-Adele",
                "https://4.bp.blogspot.com/_qQ3KpfNOJKU/TUXpEgU6B3I/AAAAAAAAG4Q/71PWqZ3DM00/s320/Adele+-+Set+Fire+To+The+Rain.jpg"),
            Musicas("Halo - Beyonce",
                "https://upload.wikimedia.org/wikipedia/pt/a/af/Beyonc%C3%A9_-_Halo.jpg"),
            Musicas("Hackearam-me - Marilia",
                "https://s2.glbimg.com/Gm4mEJcg9Sn0nDnowk4bc2joVOg=/e.glbimg.com/og/ed/f/original/2021/11/16/post_from_mariliamendoncacantora_xsjriz.jpg"),
            Musicas("Flor - Jorge&Matheus",
                "https://akamai.sscdn.co/uploadfile/letras/albuns_high/62275_20180328080023.jpg"),
          ],
        ),
      ),
    );
  }
}

class Musicas extends StatelessWidget {
  final String musica;
  final String img;
  const Musicas(this.musica, this.img, {super.key});

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
                  musica,
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

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
          title: Text('Aplicativo Disciplinas'),
        ),
        body: Column(
          children: [
            Disciplinas("IHV",
                "https://ebinterchange.com.br/wp-content/uploads/EBI-integracao-vertical-horizontal.jpg"),
            Disciplinas("Banco de Dados",
                "https://solvimm.com/wp-content/uploads/2019/11/Destacada_Qual_tipo_de_Banco_de_Dados_utilizar.png"),
            Disciplinas("Desenv. Web",
                "https://www.triscele.com.br/wp-content/uploads/2017/01/desenvolvimento-web.jpg"),
            Disciplinas("Desenv. Mobile",
                "https://www.remessaonline.com.br/blog/wp-content/uploads/2021/10/desenvolvimento-mobile-quais-sao-as-tendencias-para-o-futuro.jpg.optimal.jpg"),
            Disciplinas("IA & BigData",
                "https://olhardigital.com.br/wp-content/uploads/2019/05/20190520035515.jpg"),
            Disciplinas("IIOT",
                "https://certi.org.br/blog/wp-content/uploads/2023/01/AdobeStock_163741417-1024x683.jpeg"),
          ],
        ),
      ),
    );
  }
}

class Disciplinas extends StatelessWidget {
  final String disciplina;
  final String img;
  const Disciplinas(this.disciplina, this.img, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Container(color: Colors.blue, height: 100),
          Container(
            color: Colors.white,
            height: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  color: Colors.grey,
                  height: 50,
                  width: 80,
                  child: Image.network(
                    img,
                    fit: BoxFit.fill,
                  ),
                ),
                Text(
                  disciplina,
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

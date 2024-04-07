import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.lightBlue,
      ) ,
      body:Container(
        child: Column(
          //Imagens
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: Image.asset("imagens/logo.png")
            ),
            Padding(
              padding:EdgeInsets.only(bottom: 10) ,
              child: Text("Saiba qual o melhor opção para abastecimento do seu carro"),

            ),
            TextField(),
            TextField(),
            Padding(
              padding:EdgeInsets.only(top: 10) ,
              child: ElevatedButton(
                  onPressed: (){},
                  child: Text("Calcular"),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.lightBlue)
                  ),
              ),
            )
          ],
        ),
      ) ,
    );
  }
}

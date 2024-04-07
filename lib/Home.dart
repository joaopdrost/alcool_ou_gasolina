import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gasolina ou Álcool"),
        titleTextStyle: TextStyle(
          color: Colors.white,
              fontSize: 23
        ),
        backgroundColor: Colors.lightBlue,
      ) ,
      body:Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // imagem
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset("imagens/logo.png")
              ),
              // texto
              Padding(
                padding:EdgeInsets.only(bottom: 10) ,
                child: Text(
                  "Saiba qual o melhor opção para abastecimento do seu carro.",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // gasolina
              TextField(
                keyboardType:TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço da Gasolina,ex: 1.59",
                ),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight:FontWeight.bold
                ),
                controller:_controllerGasolina,
              ),

              // alcool
              TextField(
                keyboardType:TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço do Álcool,ex: 1.59",
                ),
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22
                ),
                controller:_controllerAlcool,
              ),

              // botão
              Padding(
                  padding:EdgeInsets.only(top: 25) ,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                          fontSize: 25
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.lightBlue,
                        padding: EdgeInsets.fromLTRB(45, 0, 45, 0)
                    ),
                  )
              ),
              Padding(
                padding: EdgeInsets.only(top: 25),
                child: Text(
                  "Resultado",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
              )
            ],
          ),
        )
      ) ,
    );
  }
}

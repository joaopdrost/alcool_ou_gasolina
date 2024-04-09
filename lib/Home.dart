import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  void _calcular(){

    var precoAlcool =  double.tryParse( _controllerAlcool.text );
    var precoGasolina =  double.tryParse( _controllerGasolina.text );

    if(precoAlcool == null || precoGasolina == null ){
    setState(() {
      _textoResultado = "Número inválido, digite números maisores que 0 e utilizando (.) ";
    });
    }else{


        if((precoAlcool/precoGasolina) >= 0.7){
          setState(() {
            _textoResultado = "Melhor abastercer com gasolina";
          });

        }else{
          setState(() {
            _textoResultado = "Melhor abastercer com álcool";
          });
        }

        _limparCampos();
    }

  }

  void _limparCampos(){
    _controllerGasolina.text = "";
    _controllerAlcool.text = "";

  }

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
                    onPressed: _calcular,
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
                  _textoResultado,
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

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Digite um valor",
              ),
              //enabled: false,
              maxLength: 2,
              maxLengthEnforcement: MaxLengthEnforcement.enforced,
              style: TextStyle(
                fontSize: 25,
                color: Colors.cyan,
              ),
              onSubmitted: (String texto) {
                print("valor digitado: " + texto);
              },
              controller: _textEditingController,
            ),
          ),
          ElevatedButton(
              onPressed: (){
                print("valor digitado: " + _textEditingController.text);
              },
              child: Text ("Salvar"),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.cyan),
            ) ,
          )
        ],
      ),
    );
  }
}

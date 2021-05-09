import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class addPacientePediatria extends StatefulWidget {
  @override
  _addPacientePediatriaState createState() => _addPacientePediatriaState();
}

class _addPacientePediatriaState extends State<addPacientePediatria> {
  TextEditingController _nome = TextEditingController();
  TextEditingController _iniciaisDoNome = TextEditingController();
  TextEditingController _idade = TextEditingController();
  TextEditingController _idadeGestacional = TextEditingController();
  TextEditingController _queixas = TextEditingController();
  TextEditingController _municipioDeOrigem = TextEditingController();

  void salvar (String nome, String iniciaisDoNome, String idade, String idadeGestacional, String queixas, String municipioDeOrigem ) {



    Firestore.instance.collection("pediatria").document("pacientes").collection("infoPacientes").add(
        {
          "nome" : nome,
          "iniciais do nome" : iniciaisDoNome,
          "idade" : idade,
          "idade gestacional" : idadeGestacional,
          "queixas" : queixas,
          "municipio de origem" : municipioDeOrigem

        }
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Adicionar Paciente",
            style: TextStyle(color: Colors.white,
                fontSize: 20.0
            ),
          ),
          backgroundColor: Colors.redAccent[700],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _nome,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nome:",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                      )

                  ),

                ),

                TextFormField(
                  controller: _iniciaisDoNome,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Iniciais do nome:",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                      )
                  ),
                ),
                TextFormField(
                  controller: _idade,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: "Idade:",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                      )
                  ),
                ),

                TextFormField(
                  controller: _queixas,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Queixas:",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                      )
                  ),
                ),
                TextFormField(
                  controller: _municipioDeOrigem,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Municipio de origem:",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Container(
                    height: 40.0,
                    child: RaisedButton(
                      color: Colors.green,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "SALVAR",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),
                      ),
                      onPressed: (){
                        salvar(_nome.text, _iniciaisDoNome.text, _idade.text, _idadeGestacional.text, _queixas.text, _municipioDeOrigem.text);
                        Navigator.pop(context);

                      },
                    )
                    ,
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}

import 'package:flutter/material.dart';

class adicionarPacientePage extends StatefulWidget {
  @override
  _adicionarPacientePageState createState() => _adicionarPacientePageState();
}

class _adicionarPacientePageState extends State<adicionarPacientePage> {
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
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "N Leito:",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0
                    )
                ),
              ),
              TextFormField(
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
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Idade:",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0
                    )
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: "Idade Gestacional:",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15.0
                    )
                ),
              ),
              TextFormField(
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

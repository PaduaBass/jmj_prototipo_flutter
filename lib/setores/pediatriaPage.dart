import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'addSetores/addPacientePediatria.dart';

class pediatriaPage extends StatefulWidget {
  @override
  _pediatriaPageState createState() => _pediatriaPageState();
}

class _pediatriaPageState extends State<pediatriaPage> {
  Future getPacientes() async {
    QuerySnapshot s = await Firestore.instance
        .collection("pediatria")
        .document("pacientes")
        .collection("infoPacientes")
        .getDocuments();
    return s.documents;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pediatria",
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
        backgroundColor: Colors.redAccent[700],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.redAccent[700],
        ),
        backgroundColor: Colors.white70,
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => addPacientePediatria()));
        },
      ),
      body: FutureBuilder(
          future: getPacientes(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.none:
              case ConnectionState.waiting:
                return LinearProgressIndicator();

              default:
                if (snapshot.hasError) {
                  return Center(
                      child: Text(
                    "Erro ao Carregar Dados :(",
                    style:
                        TextStyle(color: Colors.redAccent[700], fontSize: 25.0),
                    textAlign: TextAlign.center,
                  ));
                } else {
                  return ListView.builder(
                      itemCount: snapshot.requireData.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: Card(
                            color: Colors.white70,
                            margin: EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 4.0),
                            elevation: 20.0,
                            child: SizedBox(
                              height: 230.0,
                              width: 30000.0,
                              child: Column(
                                children: <Widget>[
                                  Card(
                                    color: Colors.redAccent[700],
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.child_care,
                                          size: 35.0,
                                          color: Colors.white,
                                        ),
                                        Column(
                                          children: <Widget>[
                                            Text(
                                              snapshot.data[index]["nome"],
                                              style: TextStyle(
                                                fontSize: 17.0,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                      "Numero do Leito: ${snapshot.data[index]["numero do leito"]}",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      )),
                                  Text(
                                      "Iniciais Do Nome: ${snapshot.data[index]["iniciais do nome"]}",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      )),
                                  Text(
                                    "Idade: ${snapshot.data[index]["idade"]} Anos",
                                    style: TextStyle(
                                      fontSize: 17.0,
                                    ),
                                  ),
                                  Text(
                                      "Queixas: ${snapshot.data[index]["queixas"]}",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      )),
                                  Text(
                                      "Municipio de Origem: ${snapshot.data[index]["municipio de origem"]}",
                                      style: TextStyle(
                                        fontSize: 17.0,
                                      ))
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                }
            }
          }),
    );
  }
}
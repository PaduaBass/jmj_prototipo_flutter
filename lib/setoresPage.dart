import 'package:flutter/material.dart';
import 'package:jmj_pototipo_flutter/contaPage.dart';
import 'package:jmj_pototipo_flutter/setores/alojamentoConjuntoPage.dart';
import 'package:jmj_pototipo_flutter/setores/casaDaGestantePage.dart';
import 'package:jmj_pototipo_flutter/setores/clinicaCirurgicaPage.dart';
import 'package:jmj_pototipo_flutter/setores/pediatriaPage.dart';
import 'package:jmj_pototipo_flutter/setores/prePartoPage.dart';
import 'package:jmj_pototipo_flutter/setores/utiNeonatalPage.dart';




class setoresPage extends StatefulWidget {
  @override
  _setoresPageState createState() => _setoresPageState();
}

class _setoresPageState extends State<setoresPage> {


  int pacienteAlojamento;
  int enfermeiroAlojamento;
  int rn;
  String EnfermeiroNome;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Setores",
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,

            ),
          ),
          backgroundColor: Colors.redAccent[700],
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.account_circle), onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => contaPage()));
            },
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                elevation: 20.0,
                child: SizedBox(
                  height: 230.0,
                  width: 30000.0,

                  child: Column(
                    children: <Widget>[
                      Card(

                        color: Colors.redAccent[700],
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            Icon(Icons.local_hotel,
                              color: Colors.white,

                            ),
                            Text("        - Alojamento Conjunto -   ",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white
                                )),
                            IconButton(onPressed: (){
                              Navigator.push(context,
                              MaterialPageRoute(builder: (context) => alojamentoConjuntoPage()));
                            },
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,

                              ),

                            ),

                          ],

                        ),

                      ),
                      Text("Paciente(s): ",
                      style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("RN(s): ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("Enfermeiro Responsável: ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("",style: TextStyle(fontSize: 17.0),),Divider(),



                    ],
                  ),
                ),

              ),
              Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                elevation: 20.0,

                child: SizedBox(
                  height: 230.0,
                  width: 30000.0,

                  child: Column(
                    children: <Widget>[
                     Card(

                        color: Colors.redAccent[700],
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            Icon(Icons.pregnant_woman,
                              color: Colors.white,

                            ),
                            Text("                  - Pré Parto -               ",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white
                                )),
                            IconButton(onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => prePartoPage()));
                            },
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,

                              ),

                            ),

                          ],

                        ),

                      ),Text("Paciente(s): ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("Enfermeiro Responsável: ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("",style: TextStyle(fontSize: 17.0),),Divider(),


                    ],
                  ),
                ),

              ),Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                elevation: 20.0,

                child: SizedBox(
                  height: 230.0,
                  width: 30000.0,

                  child: Column(
                    children: <Widget>[
                      Card(

                        color: Colors.redAccent[700],
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            Icon(Icons.home,
                              color: Colors.white,

                            ),
                            Text("         - Casa da Gestante -        ",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white
                                )),
                            IconButton(onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => casaDaGestantePage()));
                            },
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,

                              ),

                            ),

                          ],

                        ),

                      ),Text("Paciente(s): ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("Enfermeiro Responsável: ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("",style: TextStyle(fontSize: 17.0),),Divider(),

                    ],
                  ),
                ),

              ),Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                elevation: 20.0,

                child: SizedBox(
                  height: 230.0,
                  width: 30000.0,

                  child: Column(
                    children: <Widget>[
                      Card(

                        color: Colors.redAccent[700],
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            Icon(Icons.local_hospital,
                              color: Colors.white,

                            ),
                            Text("            - Clínica Cirúrgica -        ",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white
                                )),
                            IconButton(onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => clinicaCirurgicaPage()));
                            },
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,

                              ),

                            ),

                          ],

                        ),

                      ),Text("Paciente(s): ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("Enfermeiro Responsável: ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("",style: TextStyle(fontSize: 17.0),),Divider(),


                    ],
                  ),
                ),

              ),Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                elevation: 20.0,

                child: SizedBox(
                  height: 230.0,
                  width: 30000.0,

                  child: Column(
                    children: <Widget>[
                      Card(

                        color: Colors.redAccent[700],
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            Icon(Icons.child_care,
                              color: Colors.white,

                            ),
                            Text("                  - Pediatria -           ",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white
                                )),
                            IconButton(onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => pediatriaPage()));
                            },
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,

                              ),

                            ),

                          ],

                        ),

                      ),Text("Criança(s) Interna(s): ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("Criança(s) em Observação: ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("Enfermeiro Responsável: ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("",style: TextStyle(fontSize: 17.0),),Divider(),

                    ],
                  ),
                ),

              ),Card(
                color: Colors.white70,
                margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 4.0),
                elevation: 20.0,

                child: SizedBox(
                  height: 230.0,
                  width: 30000.0,

                  child: Column(
                    children: <Widget>[
                      Card(

                        color: Colors.redAccent[700],
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            Icon(Icons.star,
                              color: Colors.white,

                            ),
                            Text("              - UTI Neonatal -        ",
                                style: TextStyle(
                                    fontSize: 17.0,
                                    color: Colors.white
                                )),
                            IconButton(onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => utiNeonatalPage()));
                            },
                              icon: Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,

                              ),

                            ),

                          ],

                        ),

                      ),
                      Text("Paciente(s): ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("Enfermeiro Responsável: ",
                        style: TextStyle(fontSize: 17.0),
                      ),Divider(),
                      Text("",style: TextStyle(fontSize: 17.0),),Divider(),
                    ],
                  ),
                ),

              ),

            ],



)
          )

    );
  }

}


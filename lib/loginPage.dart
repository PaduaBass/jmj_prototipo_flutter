import 'package:flutter/material.dart';
import 'package:jmj_pototipo_flutter/setoresPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'esqueceuSenhaPage.dart';

class loginPage extends StatefulWidget {
  final _autenticacao = TextEditingController();

  void autenticar (_autenticacao){

  }

  @override
  _loginPageState createState() => _loginPageState();
}
class _loginPageState extends State<loginPage> {
    List<Text> lista = [];
  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent[700],
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset("images/hmjmj.png",
                fit: BoxFit.fitHeight,
                height: 160.0,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    fillColor: Colors.redAccent[700],
                    labelText: "Login",
                    labelStyle: TextStyle(
                        color: Colors.black
                    )
                ),
              ),
              TextField(
                keyboardType: TextInputType.text,
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.redAccent[700],
                    labelText: "Senha",
                    labelStyle: TextStyle(
                        color: Colors.black
                    )
                ),
                style: TextStyle(color: Colors.black),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(80.0, 25.0, 80.0, 15.0),
                child: Container(
                  height: 40.0,
                  child: RaisedButton(onPressed: (){
                    Navigator.of(context).pushReplacementNamed('/setoresPage');
                  },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)
                    ),
                    child:
                    Text("Entrar",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0
                      ),
                    ),
                    color: Colors.redAccent[700],
                  ),
                ),
              ),
             Column(
               children: <Widget>[
                 FlatButton(
                     child: Text(
                       "Esqueceu a senha?",
                       style: TextStyle(fontSize: 15.0, color: Colors.black, ),
                       textAlign: TextAlign.center,
                     ),
                   onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => esqueceuSenhaPage()));
                   },
                 )
               ],
             )
            ],
          ),
        ),
      );
  }
}

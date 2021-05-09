import 'package:flutter/material.dart';

class esqueceuSenhaPage extends StatefulWidget {
  @override
  _esqueceuSenhaPageState createState() => _esqueceuSenhaPageState();
}

class _esqueceuSenhaPageState extends State<esqueceuSenhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Esqueceu a senha",
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "Email:",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                      )

                  ),
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nova Senha",
                      labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0
                      )

                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Repita sua senha",
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
                      color: Colors.green[600],
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      child: Text(
                        "SALVAR",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pushNamedAndRemoveUntil('/loginPage',
                                (Route<dynamic> route) => false);
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

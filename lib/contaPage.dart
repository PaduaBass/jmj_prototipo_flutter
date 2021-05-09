import 'package:flutter/material.dart';
import 'package:jmj_pototipo_flutter/loginPage.dart';

class contaPage extends StatefulWidget {
  @override
  _contaPageState createState() => _contaPageState();
}

class _contaPageState extends State<contaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text("Minha Conta",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white
        ),
        ),
        backgroundColor: Colors.redAccent[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(05.0, 10.0, 05.0,10.0),
            child: Container(
              height: 40.0,
              child: RaisedButton(
                color: Colors.redAccent[700],

                child: Text(
                  "SAIR",
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

    );
  }
}

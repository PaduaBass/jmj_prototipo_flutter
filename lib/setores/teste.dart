import 'package:flutter/material.dart';

class teste extends StatefulWidget {
  @override
  _testeState createState() => _testeState();
}

class _testeState extends State<teste> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cards",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white
        ),

        ),

      ),
      body: Column(
        children: <Widget>[
      Card(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),

        child: SizedBox(

          height: 150.0,
          width: 30000.0,

          child: Column(
              children: <Widget>[
          Container(

          color: Colors.redAccent[700],
          child: Row(

            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.airline_seat_individual_suite, color: Colors.white),
              ),
              Text("        - Alojamento Conjunto -       ",
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.white
                  )),
              IconButton(
                icon: Icon(Icons.remove_red_eye, color: Colors.white,),

              ),

            ],

          ),
          padding: EdgeInsets.all(10.0),
        ),
            ],  
          ),
          ),

        ),
        
        ],
      )
      
     
      
      );
      

  }
}




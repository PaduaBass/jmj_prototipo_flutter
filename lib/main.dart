import 'package:flutter/material.dart';
import 'package:jmj_pototipo_flutter/loginPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:jmj_pototipo_flutter/setoresPage.dart';
import 'package:jmj_pototipo_flutter/testeFirebase.dart';


import 'contaPage.dart';

void main () async{

  DocumentSnapshot snapshot = await Firestore.instance.collection("alojamentoConjunto").document("pacientes").get();
  print(snapshot.documentID);
  runApp(MaterialApp(
    home: loginPage(),


    debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder> {
      '/loginPage': (context) => loginPage(),
      '/setoresPage': (context) => setoresPage(),

  },
  ));
}
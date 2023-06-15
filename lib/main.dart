import 'package:flutter/material.dart';

import 'login.dart';

void main() {
  runApp(MaterialApp(
    title: "MeuApp",
    theme: ThemeData(
      primarySwatch: Colors.deepPurple
    ),
    home: Login(),
    debugShowCheckedModeBanner: false,
  ));
}





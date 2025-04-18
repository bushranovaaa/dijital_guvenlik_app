import 'package:flutter/material.dart';
import 'home_screen.dart'; // Ana sayfa

void main() {
  runApp(KadinaSiddetApp());
}

class KadinaSiddetApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kadına Şiddetle Mücadele',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomeScreen(), // İlk açılan sayfa
    );
  }
}

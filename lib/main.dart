import 'package:fact_cards_dudakov/bg_gradient.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BgGradient(
          color1: Colors.blue,
          color2: Colors.amber,
          color3: Colors.deepOrange,
        ),
      ),
    ),
  );
}

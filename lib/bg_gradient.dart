import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topRight;

class BgGradient extends StatelessWidget {
  final color1;
  final color2;
  final color3;

  const BgGradient({
    required this.color1,
    required this.color2,
    required this.color3,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(),
    );
  }
}

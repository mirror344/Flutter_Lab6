import 'package:fact_cards_dudakov/styled_text.dart';
import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();
List<String> animals = ['Осьминог', 'Жираф', 'Дельфин', 'Пингвин', 'Слон', 'Морская выдра', 'Летучая мышь'];
List<String> facts = ['У осьминога три сердца', 
'Рисунок пятен у каждого жирафа уникален',  
'Дельфины могут узнавать себя в зеркале', 
'У императорских пингвинов самец обычно высиживает яйцо',
'Хобот слона содержит около 40 000 мышечных пучков',
'Некоторые морские выдры используют камни как инструменты',
'Многие летучие мыши ориентируются с помощью эхолокации'];

class SwitchImg extends StatefulWidget {
  const SwitchImg({super.key});

  @override
  State<StatefulWidget> createState() {
    return _SwitchImgState();
  }
}

class _SwitchImgState extends State<SwitchImg> {
  var currentSwitch = 1;

  void imgSwitch() {
    setState(() {
      currentSwitch = randomizer.nextInt(7) + 1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        StyledText(text: animals[currentSwitch - 1]), 
        Image.asset('assets/images/animal_$currentSwitch.png', width: 300,),
        StyledText(text: facts[currentSwitch - 1]),
        TextButton(
          onPressed: imgSwitch,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(top: 10),
            foregroundColor: Colors.greenAccent,
            backgroundColor: Colors.brown,
            textStyle: const TextStyle(fontSize: 16),
            ),
          child: Text('Сменить картинку')
        ),  
      ],
    );
  }
}

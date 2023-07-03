import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget <EEIJ>'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 13),
        child: ListView(
          children: const [
            PeliculaCard(titulo: 'Operacion Overlord',portada:'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScxgItfLnJttxCArp0Qj9p2W2eNtGJ-kkoWA&usqp=CAU'),
            SizedBox(height: 15),
            PeliculaCard2(portada: 'https://acortar.link/4xarww'),
            SizedBox(height: 15),
            PeliculaCard(titulo: 'Rambo: First Blood',portada:'https://acortar.link/DSREdM'),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

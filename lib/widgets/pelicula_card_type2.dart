import 'package:flutter/material.dart';

class PeliculaCard2 extends StatelessWidget {
  final String portada;
  final String? titulo;

  const PeliculaCard2({super.key, required this.portada, this.titulo});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      shadowColor: const Color.fromARGB(255, 219, 59, 30),
      elevation: 15,
      child: Column(children: [
        FadeInImage(
          placeholder: const AssetImage('assets/cargando.gif'),
          image: NetworkImage(portada),
          width: double.infinity,
          height: 250,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        if (titulo != null)
          Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(
                titulo ?? 'NO DATA',
                style: const TextStyle(fontSize: 16),)
              )
      ]),
    );
  }
}

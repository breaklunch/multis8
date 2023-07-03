import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void display(BuildContext context) {
    showDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) => AlertDialog(
              title: const Text('Alerta de proceso'),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17)),
              shadowColor: const Color.fromARGB(255, 202, 48, 21),
              content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Esto es el contenido interno de la alerta',
                      style: TextStyle(fontSize: 12)),
                  SizedBox(height: 15),
                  FlutterLogo(size: 100)
                ],
              ),
              actions: [
                TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(fontSize: 20),
                    ))
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () => display(context),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
              child: Text(
                'Iniciar',
                style: TextStyle(fontSize: 23),
              ),
            )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.call_missed_outlined),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}

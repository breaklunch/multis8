import 'package:lab8/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final opciones = const [
    'Slipknot',
    'Korn',
    'Limb Bizkit',
    'Audioslave',
    'System of a down',
    'Mudayve',
    'CDK'
  ];
  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Segunda Lista'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.accessibility_new,
                      color: AppTheme.primary),
                  title: Text(opciones[index]),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: AppTheme.primary,
                  ),
                  onTap: () {
                    final opciones1 = opciones[index];
                    print(opciones1);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: opciones.length));
  }
}

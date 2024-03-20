import 'package:flutter/material.dart';
import 'package:valdez0422/pantallas0422/panel0422/panel_pantalla0422.dart';

void main() => runApp(const MiAppJuniorH0422());

class MiAppJuniorH0422 extends StatelessWidget {
  const MiAppJuniorH0422({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "SadBoyz Valdez0422",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown),
          useMaterial3: true),
      home: const PanelPantalla0422(),
    );
  }
}

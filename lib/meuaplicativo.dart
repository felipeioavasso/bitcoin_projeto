import 'package:bitcoin_projeto/pages/homepage.dart';
import 'package:flutter/material.dart';

class MeuAplicativo extends StatefulWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  State<MeuAplicativo> createState() => _MeuAplicativoState();
}

class _MeuAplicativoState extends State<MeuAplicativo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      title: 'Bitcoin',

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo
        ),
      ),
    );
  }
}
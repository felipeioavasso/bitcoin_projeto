import 'package:bitcoin_projeto/pages/favoritaspage.dart';
import 'package:bitcoin_projeto/pages/moedapage.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int paginaAtual = 0;
  late PageController pc = PageController(initialPage: paginaAtual);

  @override
  void initState() {
    super.initState();
    pc;
  }

  // Mudando o icone do bottomNativationbar
  setPaginaAtual(pagina){
    setState(() {
      paginaAtual = pagina;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: PageView( // Visualização estilo slide
        controller: pc,
        children: const <Widget>[
          MoedaPage(),
          FavoritasPage(),
        ],
        onPageChanged: setPaginaAtual,
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey,
        currentIndex: paginaAtual,
        items: const [
          
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Todas',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favoritas',
          ),

        ],
        onTap: (pagina){
          pc.animateToPage(
            pagina, 
            duration: const Duration(milliseconds: 400), 
            curve: Curves.ease,
          );
        },
      ),
    );
  }
}
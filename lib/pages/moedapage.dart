import 'package:bitcoin_projeto/models/moeda.dart';
import 'package:bitcoin_projeto/repositories/moedarepository.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MoedaPage extends StatefulWidget {
  const MoedaPage({Key? key}) : super(key: key);

  @override
  State<MoedaPage> createState() => _MoedaPageState();
}

class _MoedaPageState extends State<MoedaPage> {
  
   // 
    final tabela = MoedaRepository.tabela;

    // Lista
    List<Moeda> selecionadas = [];



    // valor do bitcoin no formato Real 
    late NumberFormat real = NumberFormat.currency(locale: 'pt_BR', name: 'R\$');
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cripto moedas',)
      ),
      body: ListView.separated(
        itemBuilder: (context, moeda){
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12))
            ),
            leading: 
            
              (selecionadas.contains(tabela[moeda]))
                ? const CircleAvatar(
                  child: Icon(Icons.check),
                )
                : SizedBox(child: Image.asset(tabela[moeda].icone), width: 40,),
           
            title: Text(tabela[moeda].nome, style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold
              ),
            ),
            trailing: Text(real.format(tabela[moeda].preco), 
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            selected: selecionadas.contains(tabela[moeda]),
            selectedTileColor: Colors.grey,
            onTap: (){
              //print('Pressionou');

              setState(() {
                (selecionadas.contains(tabela[moeda]))
                  ? selecionadas.remove(tabela[moeda]) 
                  : selecionadas.add(tabela[moeda]
                );
                print(tabela[moeda].nome);
              });

              
            },
          );
        },
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_,__) => const Divider(), 
        itemCount: tabela.length
      ),
    );
  }
}
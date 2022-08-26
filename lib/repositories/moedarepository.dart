import 'package:bitcoin_projeto/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [

    Moeda(
      icone: 'imagens/bitcoin.png', 
      nome: 'Bitcoin', 
      sigla: 'BTC', 
      preco: 163604.00
    ),

    Moeda(
      icone: 'imagens/arcano.png', 
      nome: 'Cardano', 
      sigla: 'CDO', 
      preco: 163604.00
    ),

    Moeda(
      icone: 'imagens/ethereum.png', 
      nome: 'Ethereum', 
      sigla: 'ETH', 
      preco: 163604.00
    ),

    Moeda(
      icone: 'imagens/xrp.png', 
      nome: 'XRP', 
      sigla: 'XRP', 
      preco: 163604.00
    ),
  ];
}
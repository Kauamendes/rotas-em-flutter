import 'package:flutter/material.dart';
import 'package:rotas/classes/produto.dart';
import 'package:rotas/util/componentes.dart';

class CadProduto extends StatefulWidget {
 List<Produto>? listaProdutos;
  Function? atualizaPagina;
  CadProduto({Key? key, this.listaProdutos, this.atualizaPagina}) : super(key: key);

  @override
  State<CadProduto> createState() => _CadProdutoState();
}

class _CadProdutoState extends State<CadProduto> {

  TextEditingController nomeController = TextEditingController();
  TextEditingController valorController = TextEditingController();
  TextEditingController imgController = TextEditingController();
  TextEditingController descricaoController = TextEditingController();
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    cadastrar() {
      String nome = nomeController.text;
      double valor = double.parse(valorController.text);
      String caminhoImg = imgController.text;
      String descricao = descricaoController.text;
      Produto p = Produto(nome, valor,caminhoImg ,descricao);
      widget.listaProdutos!.add(p);
      widget.atualizaPagina!();
      Navigator.pop(context);
    }

     viabilidade() {
      Navigator.of(context).pushNamed('/admin');
      }
    
     return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      padding: const EdgeInsets.all(20),
      child: Form(
        child: Column(
          children: [
            Componentes().criaTexto("Cadastrar produto", 20),
            Componentes().criaTextField("Nome", false, TextInputType.datetime, nomeController),
            Componentes().criaTextField("Valor", false, TextInputType.number, valorController),
            Componentes().criaTextField("Descrição", false, TextInputType.datetime, descricaoController),
            const SizedBox(height: 10),
            Componentes().criaBotao("Cadastrar", cadastrar, 50, double.infinity),
            const SizedBox(height: 10),
            Componentes().criaBotao("Viabilidade", viabilidade, 50, double.infinity),
          ],
        ),
      ),
    );
  }
}
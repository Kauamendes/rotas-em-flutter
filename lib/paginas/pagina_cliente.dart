import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rotas/classes/produto.dart';
import 'package:rotas/util/componentes.dart';

class paginaCliente extends StatefulWidget {
  const paginaCliente({super.key});

  @override
  State<paginaCliente> createState() => _paginaClienteState();
}

class _paginaClienteState extends State<paginaCliente> {

List<Produto> listaProdutos = [];

atualizaPagina() {
    setState(() {});
  }

  limpar() {
    print(listaProdutos);
    setState(() {
      listaProdutos = [Produto('teste', 10.0, 'produto.jpeg','teste')];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar("Pagina Cliente", limpar),
      body: ListView.builder(
        itemCount: listaProdutos.length,
        itemBuilder: (context, indice) {
         return Componentes().criaItemProduto(listaProdutos[indice]); 
        },
      ),
    );
  }
}
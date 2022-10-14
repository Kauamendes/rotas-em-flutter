import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:rotas/classes/cliente.dart';
import 'package:rotas/classes/produto.dart';
import 'package:rotas/paginas/cad_cliente.dart';
import 'package:rotas/paginas/cad_produto.dart';
import 'package:rotas/util/componentes.dart';

class PaginaAdmin extends StatefulWidget {
  const PaginaAdmin({super.key});

  @override
  State<PaginaAdmin> createState() => _PaginaAdminState();
}

class _PaginaAdminState extends State<PaginaAdmin> {

 List<Cliente> listaClientes = [];

 List<Produto> listaProdutos = [];

 atualizaPagina() {
    setState(() {});
  }

  limpar() {
    setState(() {
      listaProdutos = [];
      listaClientes = [];
    });
  }

  cadCliente() {
     showBarModalBottomSheet(
      context: context,
       builder: (context) => CadCliente(listaClientes: listaClientes, atualizaPagina: atualizaPagina,)
      );
  }

  cadProduto() {
  showBarModalBottomSheet(
      context: context,
       builder: (context) => CadProduto(listaProdutos: listaProdutos, atualizaPagina: atualizaPagina,)
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Componentes().criaAppBar("Pagina Admin", limpar),
      body: Padding(
        padding:  const EdgeInsets.all(10), 
        child: Row(
        children: [
           Componentes().criaBotao('Cadastrar cliente', cadCliente, 50, 300),
            const SizedBox(width: 200),
           Componentes().criaBotao('Cadastrar produto', cadProduto, 50, 300),
        ],
      ),
      ),
    );
  }
}
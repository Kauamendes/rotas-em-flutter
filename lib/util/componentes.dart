import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rotas/classes/produto.dart';

class Componentes {
  criaAppBar(texto, acao) {
    return AppBar(
      title: criaTexto(texto, 30),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: acao,
        )
      ],
    );
  }

  criaTexto(conteudo, tamanho) {
    return Text(
      conteudo,
      style: TextStyle(
        fontSize: tamanho,
      ),
    );
  }

  criaTextField(titulo, senha, tipoTeclado, controlador) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextField(
        controller: controlador,
        keyboardType: tipoTeclado,
        obscureText: senha,
        decoration: InputDecoration(
          labelText: titulo,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }

  criaBotao(rotulo, funcao, altura, largura) {
    return SizedBox(
      height: altura,
      width: largura,
      child: ElevatedButton(
        onPressed: funcao,
        child: criaTexto(rotulo, 20),
      ),
    );
  }

  criaItemProduto(Produto p) {
     return ListTile(
      leading: Image.asset(p.caminhoImg),
        title: Text(p.nome),
        subtitle: Text('R\$ ${p.valor}')
    ); 
  }

}
import 'package:flutter/material.dart';
import 'package:rotas/classes/cliente.dart';
import 'package:rotas/util/componentes.dart';

class CadCliente extends StatefulWidget {
 List<Cliente>? listaClientes;
  Function? atualizaPagina;
  CadCliente({Key? key, this.listaClientes, this.atualizaPagina}) : super(key: key);

  @override
  State<CadCliente> createState() => _CadClienteState();
}

class _CadClienteState extends State<CadCliente> {

  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  GlobalKey<FormState> formController = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    cadastrar() {
      String nome = nomeController.text;
      String email = emailController.text;
      String senha = senhaController.text;
      Cliente c = Cliente(nome, email, senha);
      widget.listaClientes!.add(c);
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
            Componentes().criaTextField("Nome", false, TextInputType.name, nomeController),
            Componentes().criaTextField("Email", false, TextInputType.emailAddress, emailController),
            Componentes().criaTextField("Senha", false, TextInputType.visiblePassword, senhaController),
            const SizedBox(height: 10),
            Componentes().criaBotao("Cadastrar", cadastrar, 50, double.infinity),
            const SizedBox(height: 10),
            Componentes().criaBotao("Voltar", viabilidade, 50, double.infinity),
          ],
        ),
      ),
    );
  }
}
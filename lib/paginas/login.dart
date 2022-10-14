import 'package:flutter/material.dart';
import 'package:rotas/util/componentes.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {

  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {

    fazLogin() {
      if (txtEmail.text == 'cliente' && txtSenha.text == 'cliente') {
        Navigator.of(context).pushNamed('/cliente');
      } else if(txtEmail.text == 'admin' && txtSenha.text == 'admin') {
        Navigator.of(context).pushNamed('/admin');
      } else {
        print('Senha invalida');
      }
    }

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Componentes().criaTextField('Email', false, TextInputType.none, txtEmail),
            Componentes().criaTextField('Senha', true, TextInputType.visiblePassword, txtSenha),
            const SizedBox(height: 30),
            Padding(
            padding: const EdgeInsets.all(10),
            child: Componentes().criaBotao('Entrar', fazLogin, 50, double.infinity),
            ),
          ],
        ),
      ),
    );
  }
}
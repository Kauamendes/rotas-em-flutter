import 'package:flutter/material.dart';
import 'package:rotas/paginas/cad_cliente.dart';
import 'package:rotas/paginas/cad_produto.dart';
import 'package:rotas/paginas/login.dart';
import 'package:rotas/paginas/pagina_admin.dart';
import 'package:rotas/paginas/pagina_cliente.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const login(),
        '/cliente': (context) => const paginaCliente(),
        '/cliente/produto': (context) => const paginaCliente(),
        '/admin':(context) => const PaginaAdmin(),
        '/admin/cad-cliente':(context) => CadCliente(),
        '/admin/cad-produto':(context) => CadProduto(),
      },
    );
  }
}

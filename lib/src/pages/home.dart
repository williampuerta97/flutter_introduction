import 'package:flutter/material.dart';
import 'package:hello_world/src/providers/menu_provider.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Práctica Flutter')),
        body: _lista(),
      );
  }
}

Widget _lista() {
  
  return FutureBuilder(
    future: menuProvider.loadMenuData(),
    initialData: [],
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot ){
      return ListView(children: _listaItems(snapshot.data, context),);    
    },
  );
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];

  data.forEach((opt) { 
    final widgetTemp = ListTile(
      title: Text(opt['texto']),
      leading: Icon(Icons.menu_open),
      trailing: Icon(Icons.keyboard_arrow_right_rounded),
      onTap: (){
        print(opt['ruta']);
        Navigator.pushNamed(context, opt['ruta']);
      },
     );

     opciones..add( widgetTemp )..add(Divider());
  });

  return opciones;
}


import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Práctica Flutter')),
        body: Center(
          child: ElevatedButton(
            onPressed: () => _showAlert(context), 
            child: Text('Mostrar alerta')
          ),
        ),
      );
  }
}


void _showAlert(BuildContext context) {
  print(context);
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text('Título'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Texto de la ventana emergente'),
            FlutterLogo(
              size: 100,
            )
          ],
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancelar')),
          TextButton(onPressed: () {}, child: Text('Ok'))
        ],
      );
    },
  );
}

import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre = '';
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        children: [
          _createInput(),
          Divider(),
          _createEmailInput(),
          Divider(),
          _createPasswordInput(),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _createInput(){
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
        counter: Text('Letras ${_nombre.length}'),
        labelText: 'Nombre',
        helperText: 'Solo el nombre',
        suffixIcon: Icon(Icons.person),
        icon: Icon(Icons.account_circle)
      ),
      onChanged: (valor) { setState((){_nombre = valor;}); },
    );
  }

  Widget _createEmailInput(){
    return TextField(
      //autofocus: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
        labelText: 'Email',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
      ),
      onChanged: (valor) { setState((){_email = valor;}); },
    );
  }

  Widget _createPasswordInput(){
    return TextField(
      //autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0)
        ),
        labelText: 'Password',
        hintText: 'Password',
        suffixIcon: Icon(Icons.lock),
        icon: Icon(Icons.lock_open),
      ),
      onChanged: (valor) { setState((){_password = valor;}); },
    );
  }

  Widget _crearPersona(){
    return ListTile(
      title: Text('El texto del input es: $_nombre'),
      subtitle: Text('El texto del input es: $_email, contraseña: $_password'),
    );
  }
}
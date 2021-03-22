import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Práctica Flutter'),
        actions: [
          CircleAvatar(
            child: Text('WP '),
          )
        ],
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[
            _cardTipo1(),
            _cardTipo2(),
          ],
        ),
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.book, color: Colors.black),
            title: Text('Título del card'),
            subtitle: Text(
                'Este es un texto bien perrón para describir lo contenido en la card'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(onPressed: () => {}, child: Text('Ver')),
              TextButton(onPressed: () => {}, child: Text('Cancelar')),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipo2() {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage(
                'https://static.vecteezy.com/system/resources/previews/000/246/312/large_2x/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 400,
            fit: BoxFit.cover,
          ),
/*      Image(
          image: NetworkImage('https://static.vecteezy.com/system/resources/previews/000/246/312/large_2x/mountain-lake-sunset-landscape-first-person-view-vector.jpg'),
        ),
 */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Descripción de la imagen'),
          )
        ],
      ),
    );
  }
}

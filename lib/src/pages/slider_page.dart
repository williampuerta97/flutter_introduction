import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _imageSize = 300.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slidebar'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: [
            _crearSlider(),
            Expanded(child: _imageToSize())
          ],
          ),
      ),
    );
  }

  _crearSlider() {
    return Slider(
      value: _imageSize,
      min: 10,
      max: 500,
      label: 'Tamaño de la imagen',
      // divisions: 10,
      activeColor: Colors.indigoAccent,
      onChanged: (value){
        setState(() {
          _imageSize = value;
        });
      },
    );
  }

  _imageToSize() {
    return Image(
      image: NetworkImage('https://static.wikia.nocookie.net/leagueoflegends/images/b/b0/Fizz_Render.png/revision/latest?cb=20141106142909&path-prefix=pt-br'),
      width: _imageSize,
      fit: BoxFit.contain,
    );
  }
}
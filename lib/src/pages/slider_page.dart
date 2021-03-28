import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _imageSize = 300.0;
  bool _sliderBlock = true;

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
            _crearCheckbox(),
            _crearCheckboxTitle(),
            _crearSwitch(),
            Expanded(child: _imageToSize())
          ],
          ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _imageSize,
      min: 10,
      max: 500,
      label: 'Tamaño de la imagen',
      // divisions: 10,
      activeColor: Colors.indigoAccent,
      onChanged: ( _sliderBlock ) ? null : (value){
        setState(() {
          _imageSize = value;
        });
      },
    );
  }

  Widget _imageToSize() {
    return Image(
      image: NetworkImage('https://static.wikia.nocookie.net/leagueoflegends/images/b/b0/Fizz_Render.png/revision/latest?cb=20141106142909&path-prefix=pt-br'),
      width: _imageSize,
      fit: BoxFit.contain,
    );
  }

  Widget _crearCheckbox() {
    return Checkbox(
      value: _sliderBlock, 
      onChanged: (value){
        setState(() {
          _sliderBlock = value;
        });
      } 
    );
  }

  Widget _crearCheckboxTitle() {
    return CheckboxListTile(
      title: Text('Bloquear el slider'),
      value: _sliderBlock, 
      onChanged: (value){
        setState(() {
          _sliderBlock = value;
        });
      } 
    );
  }

  Widget _crearSwitch() {
    return Switch(
      value: _sliderBlock, 
      onChanged: (value){
        setState(() {
          _sliderBlock = value;
        });
      }
    ); 
  }
}
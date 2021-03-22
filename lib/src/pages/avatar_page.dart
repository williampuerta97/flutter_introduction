import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
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
        body: Text('Avatar page vacía'),
      );
  }
}
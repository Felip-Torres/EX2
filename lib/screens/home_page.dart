import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final elements = ["element 1","element 2","element 3","element 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
        backgroundColor: Colors.blue,
      ),
      body: _lista(),
    );
  }

  Widget _lista(){
    return ListView(
      children: _listaElements(),
    );
  }
  
  List<Widget> _listaElements() {
    return [];
  }
}
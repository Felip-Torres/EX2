import 'package:flutter/material.dart';

class HomeTemp extends StatelessWidget {
  final elements = ["element 1","element 2","element 3","element 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
        backgroundColor: Colors.blue,
      ),
     body: ListView(
      children: _crearElementsList2(),
     ),
    );
  }
  List<Widget> _crearElementsList(){
    List<Widget> lista =[];
    elements.forEach( (element) {
      lista.add(Divider());
      lista.add(ListTile(
        title: Text(element),
      ));
    });
    return lista;
  }

  List<Widget> _crearElementsList2(){
    var widgets = elements.map((element){
      return Column(
        children: [
          ListTile(
            title: Text(element),
            subtitle: Text("subtitol del " + element),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.add),
            onTap: null,
          ),
          Divider(),
        ],
      );
    });
    return widgets.toList();
  }

}
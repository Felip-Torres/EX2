import 'package:flutter/services.dart' show rootBundle;

final menuProvider = new MenuProviders();

class MenuProviders {
  List<dynamic> opcions = [];

  MenuProviders(){
    CarregarDades();
  }
}

CarregarDades(){
    rootBundle.loadString("data/menu_opts.json").then((data){
      print(data);
    });
  }
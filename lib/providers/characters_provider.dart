//gestor de estado
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

//puede notificar cuando hay cambios
class CharactersProvider extends ChangeNotifier {
  List<dynamic> characters = [];

  //Future void puede usar await, esperar
  Future<void> fetchCharacters() async {
    final url = 'https://rickandmortyapi.com/api/character';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    characters = json['results'];

    //reconstruir widgets
    notifyListeners();
  }
}

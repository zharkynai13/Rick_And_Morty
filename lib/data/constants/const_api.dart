import 'dart:convert';
import 'package:rick_morty/data/models/character.dart';
import 'package:http/http.dart' as http;

class CharacterApiConst {
  final url = 'https://rickandmortyapi.com/api/character';

  Future<Character> getCharacter(int page, String name) async {
    var response = await http.get(Uri.parse(url + '?name=$name&page=$page'));
    var jsonResult = jsonDecode(response.body);
    return Character.fromJson(jsonResult);
  }
}

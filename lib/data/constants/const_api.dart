import 'dart:convert';
import 'package:rick_morty/data/models/character.dart';
import 'package:http/http.dart' as http;
import 'package:rick_morty/data/models/episode.dart';

class CharacterApiConst {
  final url = 'https://rickandmortyapi.com/api/character';
  final url2 = 'https://rickandmortyapi.com/api/episode';

  Future<Character> getCharacter(int page, String name) async {
    var response = await http.get(Uri.parse(url + '?name=$name&page=$page'));
    var jsonResult = jsonDecode(response.body);
    return Character.fromJson(jsonResult);
  }

  Future<Episode> getEpisode(int page, String name) async {
    var response = await http.get(Uri.parse(url2 + '?name=$name&page=$page'));
    var jsonResult = jsonDecode(response.body);
    return Episode.fromJson(jsonResult);
  }
}

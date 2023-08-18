
import 'package:rick_morty/local_db/const_db.dart';
import 'package:shared_preferences/shared_preferences.dart';


class LocalServices {
  late SharedPreferences preferences;

  Future<void> prefInit() async {
    preferences = await SharedPreferences.getInstance();
  }

  Future<void> setCharactersId(List<String> list)async {
    await preferences.setStringList(kCharactersIdKey, list);
  }

  List<String> getCharacters(){
    return preferences.getStringList(kCharactersIdKey) ?? [];
  }


}

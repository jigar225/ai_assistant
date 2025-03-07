import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class Pref {
  static late Box _box;
  static Future<void> initlizer() async {
    Hive.defaultDirectory = (await getApplicationDocumentsDirectory()).path;
    _box = Hive.box(name: 'myData ');
  }

  static bool get showonbording =>
      _box.get('showonbording', defaultValue: true);

  static set showonbording(bool v) => _box.put('showonbording', v);
}

import 'package:hive/hive.dart';

class Datalocalstorage {
  
  var box = Hive.box('myBox');

  Future<String> handleStore(String name, dynamic value) async {

    String res = '';

    try {
        await box.put(name, value);
        res = 'Done';
    } catch (e) {
        res = 'Error $e';
    }

    return res;

  }

  Future handleGet(String name) async {

    var res = '';

    try {
      
     res = await box.get(name);

    } catch (e) {
      res = 'Error';
    }

    return res;

  }
}
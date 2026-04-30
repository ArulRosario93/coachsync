import 'package:hive/hive.dart';

class Datalocalstorage {
  
  var box = Hive.box('myBox');

  Future handleKeyCount() async {

    var res;

    try {
      
      res = box.get('count');

    } catch (e) {
        res = 'Error $e';
    }

    return res;

  }

  void handleIncrementkeyCount(int counts) async {
      
      int count = box.get('count') ?? 0;

      count = count + counts;

      await box.put('count', count);

      print(count);

  }

  Future<String> handleStore(String date, dynamic value) async {

    String res = '';

    try {

        await box.put(date, value);
        res = 'SUCCESS';

    } catch (e) {
        res = 'Error $e';
    }

    return res;

  }

  Future<String> handleEdit() async {
    String res = '';

    try {
      
      var data = await box.get('2025/01/01');

      // EDIT DATA


      await box.put('2025/01/01', data);

    } catch (e) {
      

    }

    return res;
  }


  Future handleGet(String date) async {

    var res;

    try {

       res = await box.get(date);

    } catch (e) {
      res = 'Error $e';
    }

    return res;

  }

  Future handleDeleteAll(){
    return box.clear();
  }
}
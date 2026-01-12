import 'package:http/http.dart' as http;

class Datastoremethods {

  Future addUserInfoToDB(String userId, Map<String, dynamic> userInfo) async {
    // Simulate a network call or database operation
    
    //  https://68f986d5a8c2cf208681a9c0--coachsyncserverdiff.netlify.app

  print('Startintg');

    final response = await http.get(
      Uri.parse('https://astonishing-lily-1c8ccc.netlify.app/.netlify/functions/modifyuser'),
    );
    return response;
  }
  
}
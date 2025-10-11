
class Datastoremethods {

  Future<void> addUserInfoToDB(String userId, Map<String, dynamic> userInfo) async {
    // Simulate a network call or database operation
    await Future.delayed(Duration(seconds: 1));
    print("User info for $userId added to DB: $userInfo");
  }

}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authmethods {

  final _auth = FirebaseAuth.instance;


  // Create User with Email and password
  Future<String> createUserWithEmailPassword(String email, String password) async {

    String str = '';

    try {

      final UserCredential user = await _auth.createUserWithEmailAndPassword(email: email, password: password);

      str = 'SUCCESS';
      
      
    } catch (e) {
      
      str = e.toString();

    }

    return str;

  }


  // Login User with Email and password
  Future<String> loginUserWithEmailPassword(String email, String password) async {

    String str = '';

    try {

      final UserCredential user = await _auth.signInWithEmailAndPassword(email: email, password: password);

      str = 'SUCCESS';

    } catch (e) {
      
        str = e.toString();

    }

    return str;

  }


  // Move User with Google Sign in
  Future<String> moveUserWithGoogleSignIn() async {

    String str = '';

      try {

        final gSign = await GoogleSignIn.instance;

        gSign.initialize(
          serverClientId: '845932429937-n003e89mg701qut4c3oglgli2rsmg2d1.apps.googleusercontent.com',
        );

        GoogleSignInAccount gAcc = await gSign.authenticate();

        str = 'SUCCESS';

      } catch (e) {

        str = e.toString();
      
      }

    return str;

  }
}

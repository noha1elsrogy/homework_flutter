import 'package:firebase_auth/firebase_auth.dart';

Future<void> logInService(String email, String password) async {
  try {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'user-not-found') {
      throw ("No user found for that email");
    } else if (e.code == 'wrong-password') {
      throw ("Wrong password");
    } else {
      throw Exception(e.message);
    }
  }
}

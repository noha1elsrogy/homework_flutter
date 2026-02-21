import 'package:firebase_auth/firebase_auth.dart';

Future<void> signUpService(String email, String password) async {
  try {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
  } on FirebaseAuthException catch (e) {
    if (e.code == 'weak-password') {
      throw ("The password is too weak");
    } else if (e.code == 'email-already-in-use') {
      throw ("The email is already in use");
    } else {
      throw Exception(e.message);
    }
  }
}

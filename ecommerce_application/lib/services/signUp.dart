import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_application/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> signUpService({required UserModel usermodel}) async {
  try {
    UserCredential userCredential;
    userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: usermodel.email,
      password: usermodel.password,
    );
    String uid = userCredential.user!.uid;
    FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .set(usermodel.toJson());
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

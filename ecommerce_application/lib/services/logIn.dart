import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_application/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

Future<UserModel> logInService({required UserModel usermodel}) async {
  try {
    UserCredential userCredential;
    userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: usermodel.email,
      password: usermodel.password,
    );
    var userData = await FirebaseFirestore.instance
        .collection('users')
        .doc(userCredential.user!.uid)
        .get();
    if (userData.exists) {
      // 3. تحويل البيانات القادمة من Firestore إلى كائن UserModel
      // تأكد أن موديل UserModel يحتوي على دالة fromJson
      return UserModel.fromJson(userData.data() as Map<String, dynamic>);
    } else {
      throw 'User data not found in database';
    }
  } on FirebaseAuthException catch (e) {
    if (e.code == 'invalid-email') {
      throw 'صيغة الإيميل غير صحيحة';
    }
    // 2. حالة: البيانات غلط (إما الباسورد غلط أو الحساب مش موجود أصلاً)
    // جوجل دمجت wrong-password و user-not-found هنا
    else if (e.code == 'invalid-credential' ||
        e.code == 'wrong-password' ||
        e.code == 'user-not-found') {
      throw 'wrong email or password';
    } else {
      throw 'An error occurred: ${e.message}';
    }
  } catch (e) {
    throw e.toString();
  }
}

import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/user_model.dart';

class SignUpService {
  final _supabase = Supabase.instance.client;

  Future<void> SignUpServic(UserModel user, String password) async {
    // 1. تسجيل الحساب في Auth
    final AuthResponse res = await _supabase.auth.signUp(
      email: user.email,
      password: password,
    );

    final String? userId = res.user?.id;

    // 2. إدخال البيانات في جدول profiles
    if (userId != null) {
      await _supabase.from('profiles').insert({
        'id': userId,
        'full_name': user.name,
        'email': user.email,
        'role': user.role,
      });
    }
  }
}

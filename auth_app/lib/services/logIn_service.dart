import 'package:supabase_flutter/supabase_flutter.dart';

class LoginService {
  final _supabase = Supabase.instance.client;

  Future<String> LogInService(String email, String password) async {
    // 1. تسجيل الدخول
    final AuthResponse res = await _supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );

    // 2. جلب الـ Role من جدول profiles بناءً على الـ ID اللي دخل
    final data = await _supabase
        .from('profiles')
        .select('role')
        .eq('id', res.user!.id)
        .single();

    return data['role'] as String; // بنرجع النوع (admin أو client) للكيوبيت
  }
}

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:auth_app/models/user_model.dart';

class AuthService {
  final supabase = Supabase.instance.client;

  // إرسال الكود
  Future<void> sendOtp(String phone) async {
    await supabase.auth.signInWithOtp(phone: phone);
  }

  // التأكد من الكود وجلب بيانات المستخدم كاملة
  Future<UserModel> verifyOtpAndGetUser(String phone, String token) async {
    final response = await supabase.auth.verifyOTP(
      type: OtpType.sms,
      token: token,
      phone: phone,
    );

    if (response.user == null) {
      throw Exception("لم يتم العثور على مستخدم");
    }

    // هنجيب البيانات كاملة من جدول الـ profiles عشان نملا الموديل
    final data = await supabase
        .from('profiles')
        .select() // بنجيب كل الصفوف (id, phone, role, etc)
        .eq('id', response.user!.id)
        .single();

    // بنحول الـ Map اللي رجعت لـ Object من نوع UserModel
    return UserModel.fromJson(data);
  }
}

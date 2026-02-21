import 'package:auth_app/models/user_model.dart';
import 'package:auth_app/services/login_with_phone.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_with_phone_state.dart';

class LoginWithPhoneCubit extends Cubit<LoginWithPhoneState> {
  // بنعرف السيرفيس هنا
  final AuthService _authService = AuthService();

  LoginWithPhoneCubit() : super(LoginWithPhoneInitial());

  Future<void> sendOtp(String phone) async {
    emit(LoginWithPhoneLoading());
    try {
      await _authService.sendOtp(phone);
      emit(LoginWithPhoneOtpSent(phone)); // حالة جديدة تدل إن الكود اتبعت
    } catch (e) {
      emit(LoginWithPhoneFailure(e.toString()));
    }
  }

  Future<void> verifyOtp({required String phone, required String token}) async {
    emit(LoginWithPhoneLoading());
    try {
      // بننادي على السيرفيس ونستلم الموديل جاهز
      final userModel = await _authService.verifyOtpAndGetUser(phone, token);

      emit(LoginWithPhoneSuccess(user: userModel));
    } catch (e) {
      emit(LoginWithPhoneFailure("كود التحقق غير صحيح أو انتهت صلاحيته"));
    }
  }
}

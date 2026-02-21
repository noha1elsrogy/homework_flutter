import 'package:ecommerce_app/services/signUp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  Future<void> signUpUser(String email, String password) async {
    emit(SignUpLoading());
    try {
      await signUpService(email, password); // 👈 استدعاء الفانكشن
      emit(SignUpSuccess());
    } catch (e) {
      emit(SignUpFailure(e.toString()));
    }
  }
}

import 'package:ecommerce_application/models/user_model.dart';
import 'package:ecommerce_application/services/signUp.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  Future<void> signUpUser({required UserModel usermodel}) async {
    emit(SignUpLoading());
    try {
      await signUpService(usermodel: usermodel); // 👈 استدعاء الفانكشن
      emit(SignUpSuccess());
    } catch (e) {
      emit(SignUpFailure(e.toString()));
    }
  }
}

import 'package:ecommerce_application/models/user_model.dart';
import 'package:ecommerce_application/services/logIn.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  Future<void> loginUser({required UserModel usermodel}) async {
    emit(LoginLoading());
    try {
      await logInService(usermodel: usermodel);
      emit(LoginSuccess(usermodel));
    } catch (e) {
      emit(LoginFailure(e.toString()));
    }
  }
}

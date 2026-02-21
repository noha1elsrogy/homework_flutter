import 'package:auth_app/models/user_model.dart';
import 'package:auth_app/services/logIn_service.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login({required String email, required String password}) async {
    emit(LoadingIndicator());
    print('loading');
    try {
      await LoginService().LogInService(email, password);
      emit(LoginSuccess());
      print('loading');
    } on Exception catch (e) {
      emit(LoginFailure(message: e.toString()));
      print('loading');
    }
  }
}

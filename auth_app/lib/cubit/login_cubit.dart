import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  Future<void> login() async {
    emit(LoadingIndicator());
    print('loading');
    try {
      await Future.delayed(Duration(seconds: 2), () {});
      emit(LoginSuccess());
      print('loading');
    } on Exception catch (e) {
      emit(LoginFailure(message: 'login faliure try again'));
      print('loading');
    }
  }
}

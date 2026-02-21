import 'dart:math';

import 'package:auth_app/models/user_model.dart';
import 'package:auth_app/services/signUp_service.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());
  Future<void> signUp({
    required UserModel user,
    required String password,
  }) async {
    emit(SignUpLoading());
    try {
      await SignUpService().SignUpServic(user, password);
      emit(SignUpSuccess());
    } on AuthException catch (e) {
      emit(SignUpFailure(e.message.toString()));
    }
  }
}

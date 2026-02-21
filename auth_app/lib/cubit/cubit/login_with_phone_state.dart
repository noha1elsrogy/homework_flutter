part of 'login_with_phone_cubit.dart';

@immutable
sealed class LoginWithPhoneState {}

final class LoginWithPhoneInitial extends LoginWithPhoneState {}

final class LoginWithPhoneLoading extends LoginWithPhoneState {}

final class LoginWithPhoneSuccess extends LoginWithPhoneState {
  final UserModel user;
  LoginWithPhoneSuccess({required this.user});
}

class LoginWithPhoneOtpSent extends LoginWithPhoneState {
  final String phoneNumber; // الرقم هيتخزن هنا
  LoginWithPhoneOtpSent(this.phoneNumber);
}

final class LoginWithPhoneFailure extends LoginWithPhoneState {
  final String message;
  LoginWithPhoneFailure(this.message);
}

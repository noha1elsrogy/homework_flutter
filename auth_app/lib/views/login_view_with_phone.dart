import 'package:auth_app/cubit/cubit/login_with_phone_cubit.dart';
import 'package:auth_app/models/user_model.dart';
import 'package:auth_app/views/otp_screen.dart';
import 'package:auth_app/widgets/drop_down_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginViewWithPhone extends StatefulWidget {
  final TextEditingController otpController = TextEditingController();
  String phone = '';
  String role = '';
  LoginViewWithPhone({super.key});

  @override
  State<LoginViewWithPhone> createState() => _LoginViewWithPhoneState();
}

class _LoginViewWithPhoneState extends State<LoginViewWithPhone> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginWithPhoneCubit(),
      child: BlocConsumer<LoginWithPhoneCubit, LoginWithPhoneState>(
        listener: (context, state) {
          if (state is LoginWithPhoneFailure) {
            ScaffoldMessenger.of(
              context,
            ).showSnackBar(SnackBar(content: Text(state.message)));
          }
          if (state is LoginWithPhoneOtpSent) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: context
                      .read<
                        LoginWithPhoneCubit
                      >(), // بنقوله "خد الكيوبت ده معاك" لشاشة الـ OTP
                  child: const OtpScreen(),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is LoginWithPhoneLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return Scaffold(
            appBar: AppBar(title: const Text('Login with Phone')),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: widget.otpController,
                    onChanged: (value) {
                      widget.phone = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your phone number';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 20),
                  DropDownWidget(
                    onSelected: (value) {
                      widget.role = value!;
                    },
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      context.read<LoginWithPhoneCubit>().sendOtp(widget.phone);
                    },
                    child: const Text('Send OTP'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

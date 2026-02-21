import 'package:auth_app/cubit/cubit/login_with_phone_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // هنا مفيش BlocProvider لأننا استلمناه في الـ Navigator
    return BlocConsumer<LoginWithPhoneCubit, LoginWithPhoneState>(
      listener: (context, state) {
        if (state is LoginWithPhoneFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
        if (state is LoginWithPhoneSuccess) {
          final route = state.user.role == 'admin'
              ? 'homeAdminView'
              : 'homeClientView';
          Navigator.pushNamedAndRemoveUntil(context, route, (r) => false);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(title: const Text('Enter OTP')),
          body: Column(
            children: [
              // استخدمي ده مؤقتاً عشان الـ Crash يختفي
              TextField(
                controller: otpController,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                maxLength: 6,
                style: const TextStyle(fontSize: 24, letterSpacing: 15),
                decoration: const InputDecoration(hintText: "000000"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final currentState = context
                      .read<LoginWithPhoneCubit>()
                      .state;
                  if (currentState is LoginWithPhoneOtpSent) {
                    context.read<LoginWithPhoneCubit>().verifyOtp(
                      phone: currentState.phoneNumber,
                      token: otpController.text,
                    );
                  }
                },
                child: state is LoginWithPhoneLoading
                    ? const CircularProgressIndicator()
                    : const Text('Verify OTP'),
              ),
            ],
          ),
        );
      },
    );
  }
}

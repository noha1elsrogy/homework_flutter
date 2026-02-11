import 'package:auth_app/cubit/login_cubit.dart';
import 'package:auth_app/widgets/custom/custom_ElevatedButton.dart';
import 'package:auth_app/widgets/custom/custom_password_form.dart';
import 'package:auth_app/widgets/custom/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.95),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 30,
            offset: const Offset(0, 15),
          ),
        ],
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            CustomTextFormField(
              labelText: 'Email',
              prefixIcon: const Icon(Icons.email_outlined),
            ),
            const SizedBox(height: 20),
            CustomPasswordForm(),

            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Color(0xFF667eea),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 56,
              child: CustomElevatedButton(
                formKey: _formKey,
                backGroundColor: const Color(0xFF667eea),
                foreGroundColor: Colors.white,
                ButtonText: 'LogIn',
                onPressed: () {
                  context.read<LoginCubit>().login();
                  print('Button pressed'); // <---- هنا نتأكد إذا الضغط شغال
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:auth_app/cubit/login_cubit/login_cubit.dart';
import 'package:auth_app/models/user_model.dart';
import 'package:auth_app/widgets/custom/custom_ElevatedButton.dart';
import 'package:auth_app/widgets/custom/custom_password_form.dart';
import 'package:auth_app/widgets/custom/custom_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String email = '';

  String password = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login success'),
              backgroundColor: Colors.green,
            ),
          );
        }
        if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message), backgroundColor: Colors.red),
          );
        }
      },
      builder: (context, state) {
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
                  onchanged: (value) {
                    email = value!;
                  },
                ),
                const SizedBox(height: 20),
                CustomPasswordTextField(
                  labelText: 'password',
                  prefixIcon: Icon(Icons.lock_outline),
                  onchangedPassword: (value) {
                    password = value!;
                  },
                ),

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
                      context.read<LoginCubit>().login(
                        email: email,
                        password: password,
                      );
                      print('Button pressed'); // <---- هنا نتأكد إذا الضغط شغال
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

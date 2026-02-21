import 'package:auth_app/cubit/signup_cubit/sign_up_cubit.dart';
import 'package:auth_app/models/user_model.dart';
import 'package:auth_app/widgets/custom/custom_ElevatedButton.dart';
import 'package:auth_app/widgets/custom/custom_password_form.dart';
import 'package:auth_app/widgets/custom/custom_textformfield.dart';
import 'package:auth_app/widgets/drop_down_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupForm extends StatefulWidget {
  SignupForm({super.key});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  String name = '';

  String email = '';

  String password = '';
  String role = '';

  final _formKey = GlobalKey<FormState>();

  // bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (BuildContext context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('SignUp success'),
              backgroundColor: Colors.green,
            ),
          );
          Navigator.pop(context);
        }
        if (state is SignUpFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.error), backgroundColor: Colors.red),
          );
        }
      },
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.95),
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
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
                  labelText: 'Full Name',
                  prefixIcon: const Icon(Icons.person_outline),
                  onchanged: (value) {
                    name = value!;
                  },

                  // suffixIcon: null,
                  // obscureText: null,
                ),

                const SizedBox(height: 16),
                CustomTextFormField(
                  labelText: 'Email',
                  prefixIcon: const Icon(Icons.email_outlined),
                  onchanged: (value) {
                    email = value!;
                  },
                ),
                // Email Field
                CustomPasswordTextField(
                  labelText: 'password',
                  prefixIcon: Icon(Icons.lock_outline),
                  onchangedPassword: (value) {
                    password = value!;
                  },
                ),
                const SizedBox(height: 16),
                CustomPasswordTextField(
                  labelText: 'password',
                  prefixIcon: Icon(Icons.lock_outline),
                  onchangedPassword: (value) {
                    password = value!;
                  },
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropDownWidget(
                    onSelected: (value) {
                      role = value!;
                    },
                  ),
                ),

                const SizedBox(height: 24),

                // Signup Button
                SizedBox(
                  width: double.infinity,
                  height: 56,
                  child: CustomElevatedButton(
                    formKey: _formKey,
                    backGroundColor: const Color(0xFF11998e),
                    foreGroundColor: Colors.white,
                    ButtonText: 'SignUp',
                    onPressed: () {
                      context.read<SignUpCubit>().signUp(
                        user: UserModel(name: name, email: email, role: role),
                        password: password,
                      );
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

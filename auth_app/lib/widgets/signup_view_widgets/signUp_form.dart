import 'package:auth_app/widgets/custom/custom_ElevatedButton.dart';
import 'package:auth_app/widgets/custom/custom_password_form.dart';
import 'package:auth_app/widgets/custom/custom_textformfield.dart';
import 'package:flutter/material.dart';

class SignupForm extends StatelessWidget {
  SignupForm({super.key});

  final _formKey = GlobalKey<FormState>();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
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
              suffixIcon: null,
              obscureText: null,
            ),

            const SizedBox(height: 16),
            CustomTextFormField(
              labelText: 'Email',
              prefixIcon: const Icon(Icons.email_outlined),
              suffixIcon: null,
              obscureText: null,
            ),
            // Email Field
            CustomPasswordForm(),

            const SizedBox(height: 16),
            CustomPasswordForm(),

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
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}

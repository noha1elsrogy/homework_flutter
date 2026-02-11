import 'package:auth_app/views/login_view.dart';
import 'package:auth_app/widgets/custom/custom_textformfield.dart';
import 'package:auth_app/widgets/footer.dart';
import 'package:auth_app/widgets/header._welcome.dart';
import 'package:auth_app/widgets/signup_view_widgets/signUp_form.dart';
import 'package:flutter/material.dart';

class SignupView extends StatelessWidget {
  SignupView({super.key});

  final _formKey = GlobalKey<FormState>();

  bool _obscurePassword = true;

  bool _obscureConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              const Color(0xFF11998e),
              const Color(0xFF38ef7d),
              const Color(0xFF06beb6),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 20.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  WelcomeHeader(
                    icon: const Icon(
                      Icons.person_add_outlined,
                      size: 50,
                      color: Colors.white,
                    ),
                    welcomeText: 'Create Account',
                    subTextWelcome: 'Sign up to get started',
                  ),

                  const SizedBox(height: 40),
                  SignupForm(),
                  // Signup Form Card
                  const SizedBox(height: 30),
                  // Login Link
                  Footer(
                    YouHaveAccountOrNot: 'Already have an account ?',
                    logInOrSiginUp: 'LogIn',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginView()),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:auth_app/cubit/login_cubit.dart';
import 'package:auth_app/views/signup_view.dart';
import 'package:auth_app/widgets/footer.dart';
import 'package:auth_app/widgets/header._welcome.dart';
import 'package:auth_app/widgets/login_view_widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is LoginSuccess) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Login success'),
                backgroundColor: Colors.green,
              ),
            );
          }
          if (state is LoginFailure) {
            ScaffoldMessenger.of(context).clearSnackBars();
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            body: ModalProgressHUD(
              inAsyncCall: state is LoadingIndicator,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFF667eea),
                      Color(0xFF764ba2),
                      Color(0xFFf093fb),
                    ],
                  ),
                ),
                child: SafeArea(
                  child: Center(
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          WelcomeHeader(
                            icon: const Icon(
                              Icons.lock_outline,
                              size: 50,
                              color: Colors.white,
                            ),
                            welcomeText: 'Welcome Back',
                            subTextWelcome: 'Sign in to continue',
                          ),
                          const SizedBox(height: 50),
                          LoginForm(),
                          const SizedBox(height: 30),
                          Footer(
                            YouHaveAccountOrNot: "Don't have an account? ",
                            logInOrSiginUp: 'SignUp',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => SignupView()),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

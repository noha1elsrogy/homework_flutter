import 'package:ecommerce_application/cubit/signUp_cubit/sign_up_cubit.dart';
import 'package:ecommerce_application/generated/assets.dart';
import 'package:ecommerce_application/widgets/Signup/validation_signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightImage = size.height * 0.40;
    return BlocProvider(
      create: (context) => SignUpCubit(),
      child: Scaffold(
        // resizeToAvoidBottomInset: true, // عشان الشاشة تقل لما الكيبورد يظهر
        body: Stack(
          children: [
            Image.asset(
              Assets.signup,
              fit: BoxFit.cover,
              height: heightImage,
              width: size.width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SafeArea(
                child: Icon(Icons.arrow_back, size: 36, color: Colors.white),
              ),
            ),
            ValidationSectionSignUp(size: size),
          ],
        ),
      ),
    );
  }
}

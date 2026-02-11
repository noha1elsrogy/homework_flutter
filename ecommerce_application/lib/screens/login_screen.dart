import 'package:ecommerce_application/cubit/login_cubit/login_cubit.dart';
import 'package:ecommerce_application/generated/assets.dart';
import 'package:ecommerce_application/widgets/Login/validation_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final heightImage = size.height * 0.70;
    return BlocProvider(
      create: (context) => LoginCubit(),
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
            ValidationSectionLogin(size: size),
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/cubit/cubit/login_cubit.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_textField.dart';
import 'package:ecommerce_app/widgets/password_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class ValidationSectionLogin extends StatefulWidget {
  ValidationSectionLogin({super.key, required this.size});

  final Size size;

  @override
  State<ValidationSectionLogin> createState() => _ValidationSectionLoginState();
}

class _ValidationSectionLoginState extends State<ValidationSectionLogin> {
  String email = '';

  String password = '';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.error.toString())));
        }
        if (state is LoginSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('log in successfully')));
          Navigator.pushNamed(context, homeScreen);
        }
      },
      builder: (context, state) {
        if (state is LoginLoading) {
          return CircularProgressIndicator();
        }

        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              // margin: EdgeInsets.only(top: -heightImage),
              width: widget.size.width,
              height: widget.size.height * 0.50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // SizedBox(height: 200),
                  Row(
                    children: [
                      Text(
                        'SignIn',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Icon(Icons.cancel),
                    ],
                  ),
                  SizedBox(height: 20),

                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: 'Email',
                    onChanged: (String value1) {
                      email = value1;
                    },
                  ),
                  SizedBox(height: 10),
                  PasswordTextField(
                    onChanged: (String value2) {
                      password = value2;
                    },
                  ),
                  SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'forgot Password?',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: kPrimayColor,
                        ),
                      ),

                      SizedBox(height: 20),
                      CustomButton(
                        text: 'Sign In',
                        colorButton: kPrimayColor,
                        textColor: Colors.black,
                        onTap: () {
                          context.read<LoginCubit>().login(email, password);
                        },
                        borderColor: kPrimayColor,
                      ),
                      SizedBox(height: 60),
                    ],
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

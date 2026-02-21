import 'package:ecommerce_app/constants.dart';
import 'package:ecommerce_app/cubit/signUp/sign_up_cubit.dart';
import 'package:ecommerce_app/widgets/custom_button.dart';
import 'package:ecommerce_app/widgets/custom_textField.dart';
import 'package:ecommerce_app/widgets/password_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ValidationSectionSignUp extends StatefulWidget {
  ValidationSectionSignUp({super.key, required this.size});

  final Size size;

  @override
  State<ValidationSectionSignUp> createState() =>
      _ValidationSectionSignUpState();
}

class _ValidationSectionSignUpState extends State<ValidationSectionSignUp> {
  String firstName = '';

  String lastName = '';

  String email = '';

  String password = '';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (BuildContext context, SignUpState state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text('Sign up successfully')));
          Navigator.pop(context);
        }
        if (state is SignUpFailure) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.error.toString())));
        }
      },
      builder: (context, state) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              // margin: EdgeInsets.only(top: -heightImage),
              width: widget.size.width,
              height: widget.size.height * 0.66,
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
                        'Create your Account',
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
                  Row(
                    children: [
                      SizedBox(
                        width: widget.size.width * 0.40,
                        child: CustomTextField(
                          hintText: 'First Name',
                          onChanged: (String v1) {
                            firstName = v1;
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      SizedBox(
                        width: widget.size.width * 0.40,
                        child: CustomTextField(
                          hintText: 'Last Name',
                          onChanged: (String v2) {
                            lastName = v2;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: 'Email',
                    onChanged: (String v3) {
                      email = v3;
                    },
                  ),
                  SizedBox(height: 10),
                  PasswordTextField(
                    onChanged: (String p1) {
                      password = p1;
                    },
                  ),
                  SizedBox(height: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('By tapping Sign up you accept all'),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('terms ', style: TextStyle(color: kPrimayColor)),
                          Text('and '),
                          Text(
                            'conditions',
                            style: TextStyle(color: kPrimayColor),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      CustomButton(
                        text: 'CREATE AN ACCOUNT',
                        colorButton: kPrimayColor,
                        textColor: Colors.black,
                        onTap: () {
                          context.read<SignUpCubit>().signUpUser(
                            email,
                            password,
                          );
                          // signUp(email, password);
                          // print('First Name: $firstName');
                          // Navigator.pop(context);
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

// Future<void> signUp(String email, String password) async {
//   try {
//     await FirebaseAuth.instance.createUserWithEmailAndPassword(
//       email: email,
//       password: password,
//     );
//     print("User Created Successfully");
//   } on FirebaseAuthException catch (e) {
//     print(e.message);
//   }
// }

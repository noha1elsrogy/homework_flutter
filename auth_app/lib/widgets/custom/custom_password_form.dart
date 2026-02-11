import 'package:auth_app/widgets/custom/custom_textformfield.dart';
import 'package:flutter/material.dart';

class CustomPasswordForm extends StatefulWidget {
  const CustomPasswordForm({super.key});

  @override
  State<CustomPasswordForm> createState() => _CustomPasswordFormState();
}

class _CustomPasswordFormState extends State<CustomPasswordForm> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      labelText: 'Password',
      prefixIcon: const Icon(Icons.lock_outline),
      obscureText: _obscurePassword,
      suffixIcon: IconButton(
        icon: Icon(
          _obscurePassword
              ? Icons.visibility_outlined
              : Icons.visibility_off_outlined,
        ),
        onPressed: () {
          setState(() {
            _obscurePassword = !_obscurePassword;
          });
        },
      ),
    );
    // return TextFormField(
    //   obscureText: widget.obscureText ?? true,
    //   keyboardType: TextInputType.emailAddress,
    //   decoration: InputDecoration(
    //     labelText: widget.labelText,
    //     prefixIcon: widget.prefixIcon,
    //     suffixIcon: IconButton(
    //       icon: Icon(
    //         _obscurePassword
    //             ? Icons.visibility_off_outlined
    //             : Icons.visibility_outlined,
    //       ),
    //       onPressed: () {
    //         setState(() {
    //           _obscurePassword = !_obscurePassword;
    //         });
    //       },
    //     ),

    //     // prefixIcon: const Icon(Icons.email_outlined),
    //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
    //     enabledBorder: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(12),
    //       borderSide: BorderSide(color: Colors.grey.shade300),
    //     ),
    //     focusedBorder: OutlineInputBorder(
    //       borderRadius: BorderRadius.circular(12),
    //       borderSide: const BorderSide(color: Color(0xFF667eea), width: 2),
    //     ),
    //     filled: true,
    //     fillColor: Colors.grey.shade50,
    //   ),
    //   validator: (value) {
    //     if (value == null || value.isEmpty) {
    //       return 'Please enter your email';
    //     }
    //     if (!value.contains('@')) {
    //       return 'Please enter a valid email';
    //     }
    //     return null;
    //   },
    // );
  }
}

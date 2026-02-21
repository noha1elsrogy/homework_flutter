import 'package:auth_app/views/home_admin_view.dart';
import 'package:auth_app/views/home_client_view.dart';
import 'package:auth_app/views/login_view_with_phone.dart';
import 'package:auth_app/views/otp_screen.dart';
import 'package:auth_app/views/signup_view.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'views/login_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 2. بنعرف سوبا بيس بمشروعك
  await Supabase.initialize(
    url: 'https://zhwwjmnrhrtvrcealzun.supabase.co',
    anonKey: 'sb_publishable_N5pVV_Kw7MEJb03iZ1b14w_g26Syw1f',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'loginView': (context) => LoginView(),
        'signupView': (context) => SignupView(),
        'homeClientView': (context) => HomeClientView(),
        'homeAdminView': (context) => HomeAdminView(),
        // Add more routes as needed
        'LoginViewWithPhone': (context) => LoginViewWithPhone(),

        // 'OtpView': (context) => OtpScreen(),
      },
      title: 'Auth with Cubit',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF667eea)),
        useMaterial3: true,
      ),
      initialRoute: 'LoginViewWithPhone',
    );
  }
}

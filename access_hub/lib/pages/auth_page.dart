import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/auth_mode_cubit.dart';
import '../widgets/login_card.dart';
import '../widgets/register_card.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AuthModeCubit(),
      child: Scaffold(
        backgroundColor: Colors.deepPurple[50],
        body: SafeArea(
          child: Center(
            child: BlocBuilder<AuthModeCubit, AuthMode>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state == AuthMode.login ? "تسجيل الدخول" : "إنشاء حساب جديد",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Card(
                      elevation: 8,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: state == AuthMode.login
                            ? LoginCard()
                            : RegisterCard(),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        if (state == AuthMode.login) {
                          context.read<AuthModeCubit>().switchToRegister();
                        } else {
                          context.read<AuthModeCubit>().switchToLogin();
                        }
                      },
                      child: Text(
                        state == AuthMode.login
                            ? "ليس لديك حساب؟ سجل الآن"
                            : "لديك حساب؟ تسجيل الدخول",
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

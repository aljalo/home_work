import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/login_cubit.dart';
import '../cubit/login_state.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(),
      child: Scaffold(
        backgroundColor: Color(0xff60558E),
        appBar: AppBar(title: Text('Login')),
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginSuccess) {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const HomePage()),
              );
              // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('')));
            } else if (state is LoginError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(labelText: 'Email'),
                  ),
                  TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(labelText: 'Password '),
                  ),
                  const SizedBox(height: 20),
                  state is LoginLoading
                      ? CircularProgressIndicator()
                      : ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<LoginCubit>(context).loginUser(
                            email: emailController.text.trim(),
                            password: passwordController.text.trim(),
                          );
                        },
                        child: Text('Login'),
                      ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/register_cubit.dart';
import '../cubit/register_state.dart';
import '../widgets/success_dialog.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RegisterCubit(),
      child: Scaffold(
        backgroundColor: Color(0xff60558E),
        appBar: AppBar(
          title: Text('Register new user'),
          backgroundColor: Color(0xff60558E),
        ),
        body: BlocConsumer<RegisterCubit, RegisterState>(
          listener: (context, state) {
            if (state is RegisterSuccess) {
              // ScaffoldMessenger.of(
              // context).showSnackBar(SnackBar(content: Text('')));
              // Navigator.pushReplacement(
              // context,
              // MaterialPageRoute(builder: (_) =>  LoginPage()),
              // );
              successDialog(context);
            } else if (state is RegisterError) {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text(state.message)));
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset('assets/images/chat.png', height: 200),
                  Card(
                    margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Form(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            TextFormField(
                              controller: emailController,
                              decoration: InputDecoration(labelText: 'Email'),
                            ),
                            TextFormField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password',
                              ),
                            ),
                            const SizedBox(height: 20),
                            state is RegisterLoading
                                ? CircularProgressIndicator()
                                : ElevatedButton(
                                  onPressed: () {
                                    BlocProvider.of<RegisterCubit>(
                                      context,
                                    ).registerUser(
                                      email: emailController.text.trim(),
                                      password: passwordController.text.trim(),
                                    );
                                  },
                                  child: Text('Sign Up'),
                                ),
                          ],
                        ),
                      ),
                    ),
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

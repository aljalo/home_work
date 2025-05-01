import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signup_page/cubit/signup_cubit.dart';
import 'package:signup_page/cubit/signup_state.dart';
import 'package:signup_page/widgets/custom_button.dart';
import 'package:signup_page/widgets/custom_text_field.dart';

class CustomSignupBox extends StatelessWidget {
  const CustomSignupBox({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SignUpCubit(),
      child: BlocConsumer<SignUpCubit, SignUpState>(
        listener: (context, state) {
          state.handleState(context);
        },
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(32),
                topRight: Radius.circular(32),
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      const Text(
                        'Create your account',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        height: 35,
                        width: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black,
                        ),
                        child: const Icon(Icons.close, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(child: CustomTextField(labelText: 'First Name')),
                      const SizedBox(width: 10),
                      Expanded(child: CustomTextField(labelText: 'Last Name')),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  child: CustomTextField(labelText: 'Email'),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                  child: CustomTextField(
                    labelText: 'Password',
                    icon: Icons.visibility_off,
                  ),
                ),
                const Center(child: Text('By tapping Sign up you accept all')),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('terms', style: TextStyle(color: Colors.orange)),
                    Text(' and '),
                    Text('condition', style: TextStyle(color: Colors.orange)),
                  ],
                ),
                const SizedBox(height: 20),
                if (state is SignUpLoading)
                  const CircularProgressIndicator()
                else
                  CustomButton(
                    text: 'CREATE AN ACCOUNT',
                    color: Colors.black,
                    onPressed: () {
                      context.read<SignUpCubit>().createAccount();
                    },
                  ),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}

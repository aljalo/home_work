import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signuo_feature_with_cubit/cubit/signup_cubit.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailController,
    required TextEditingController passwordController,
  }) : _formKey = formKey, _emailController = emailController, _passwordController = passwordController;

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(content: Text('ProcessingSign Up')),
          // );
          BlocProvider.of<SignupCubit>(context).signup(
            _emailController.text,
            _passwordController.text,
          );
        }
      },
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        'Sign Up',
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

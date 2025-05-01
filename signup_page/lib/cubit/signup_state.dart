import 'package:flutter/material.dart';
import 'package:signup_page/widgets/success_dialog.dart';

abstract class SignUpState {
  void handleState(BuildContext context) {}
}
class SignUpInitial extends SignUpState {}
class SignUpLoading extends SignUpState {}
class SignUpSuccess extends SignUpState {
  @override
  void handleState(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => const SuccessDialog(),
    );
  }
}
class SignUpFailure extends SignUpState {
  @override
  void handleState(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('There is error please try again later'),
      ),
    );
  }
}

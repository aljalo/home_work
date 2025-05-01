import 'package:flutter_bloc/flutter_bloc.dart';
import 'signup_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  void createAccount() async {
    emit(SignUpLoading());

    try {
      await Future.delayed(const Duration(seconds: 2));
      emit(SignUpSuccess());
    } catch (_) {
      emit(SignUpFailure());
    }
  }
}

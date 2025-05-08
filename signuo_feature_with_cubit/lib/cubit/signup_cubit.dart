import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitial());

  void signup(String email, String password) async {
    emit(SignupLoading());
    try {
      
      //throw Exception('Test Exeption');

      await Future.delayed(Duration(seconds: 2));
      emit(SignupSuccess());
    } catch (e) {
      //emit(SignupFailure(e.toString()));
      emit(SignupFailure('There is an error'));
    }
  }
}

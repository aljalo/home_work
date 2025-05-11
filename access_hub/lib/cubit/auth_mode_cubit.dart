import 'package:flutter_bloc/flutter_bloc.dart';

enum AuthMode { login, register }

class AuthModeCubit extends Cubit<AuthMode> {
  AuthModeCubit() : super(AuthMode.login);

  void switchToLogin() => emit(AuthMode.login);
  void switchToRegister() => emit(AuthMode.register);
}

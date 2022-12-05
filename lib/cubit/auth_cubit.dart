import 'package:airplane_app/models/user_model.dart';
import 'package:airplane_app/services/auth_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      // loading
      emit(AuthLoading());

      // menjalankan fungsi signup
      UserModel user = await AuthService()
          .signUp(email: email, password: password, name: name, hobby: hobby);

      // ketika sukses
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}

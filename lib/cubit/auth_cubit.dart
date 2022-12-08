import 'package:airplane_app/models/user_model.dart';
import 'package:airplane_app/services/auth_service.dart';
import 'package:airplane_app/services/user_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  // method untuk sign up
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

  // method sign out
  void signOut() async {
    try {
      emit(AuthLoading());
      // panggil method sign out yang sudah dibuat di auth service
      AuthService().signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void getCurrentUser(String id) async {
    try {
      // variable user berisi data user yang diambil melalui fungsi getuserbyid
      UserModel user = await UserService().getUserById(id);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }

  void signIn({required String email, required String password}) async {
    try {
      // lakukan loading
      emit(AuthLoading());

      UserModel user = await AuthService().signIn(
        email: email,
        password: password,
      );

      // jika berhasil
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed(e.toString()));
    }
  }
}

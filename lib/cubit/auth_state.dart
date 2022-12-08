part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

// menginisialisasi cubit
class AuthInitial extends AuthState {}

// untuk menunggu dan autentikasi data dari database
class AuthLoading extends AuthState {}

// ketika sukses melakukan autentikasi
class AuthSuccess extends AuthState {
  final UserModel user;

  const AuthSuccess(this.user);

  @override
  // TODO: implement props
  List<Object> get props => [user];
}

// ketika gagal autentikasi
class AuthFailed extends AuthState {
  final String error;

  const AuthFailed(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}

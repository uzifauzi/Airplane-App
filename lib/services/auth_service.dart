import 'dart:developer';

import 'package:airplane_app/cubit/auth_cubit.dart';
import 'package:airplane_app/models/user_model.dart';
import 'package:airplane_app/services/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;

// fungsi sign up, nilainya berupa usermodel
  Future<UserModel> signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      // lakukan create user
      // diposisi ini baru sampai register di firebaseauth
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // data yang ini perlu disimpan ke firestore
      UserModel user = UserModel(
        id: userCredential.user!.uid,
        email: email,
        name: name,
        hobby: hobby,
        balance: 280000000,
      );

      // set user
      await UserService().setUSer(user);
      return user;
    } on FirebaseAuthException catch (e) {
      log(e.code);
      if (e.code == "email-already-in-use") {
        throw ('The account already exists for that email.');
      } else if (e.code == "invalid-email") {
        throw ('Check your email or password again.');
      } else if (e.code == 'weak-password') {
        throw ('The password provided is too weak.');
      } else {
        throw e;
      }
    }
  }

  // fungsi untuk login
  Future<UserModel> signIn(
      {required String email, required String password}) async {
    try {
      // UserCredential:  Struktur yang berisi Pengguna , Tipe Operasi , dan ID penyedia. Disini panggil fungsi sign in with email dan password
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // ambil data user berdasarkan id
      UserModel user =
          await UserService().getUserById(userCredential.user!.uid);

      return user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw 'User not found.';
      } else if (e.code == 'user-disabled') {
        throw 'email has been disabled.';
      } else if (e.code == 'invalid-email') {
        throw ('Email is invalid.');
      } else {
        throw e;
      }
    }
  }

  // fungsi untuk log out akun
  Future<void> signOut() async {
    try {
      // panggil fungsi sign out dari firebase
      await _auth.signOut();
    } catch (e) {
      throw e;
    }
  }
}

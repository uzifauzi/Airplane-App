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
    } catch (e) {
      throw e;
    }
  }
}

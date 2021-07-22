import 'package:firebase_auth/firebase_auth.dart';

class AuthProvider {
  FirebaseAuth auth = FirebaseAuth.instance;

// Create a Register account
  Future<String> regitration(
      {required String email, required String password}) async {
    try {
      await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Account created';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      return 'Error occured, please try again';
    }
    return '';
  }

// Login account
  Future<String> signIn(
      {required String email, required String password}) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return 'Wildfire Home';
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        return 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        return 'Wrong password provided for that user';
      }
      return '';
    }
  }

// reset password
  Future<String> resetPassword({required String email}) async {
    try {
      await auth.sendPasswordResetEmail(
        email: email,
      );
      return 'Email Sent to Email You Provided';
    } catch (e) {
      return 'Error Occured';
    }
  }

// logout account
  void signOut() async {
    await auth.signOut();
  }
}
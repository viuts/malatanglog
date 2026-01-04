import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

  AuthService();

  Future<void> initialize() async {
    // For web, you often need the clientId.
    // In this project, it's defined in firebase_options.dart for the platform.
    await _googleSignIn.initialize();
  }

  Stream<User?> get user => _auth.authStateChanges();

  User? get currentUser => _auth.currentUser;

  Future<String?> getIdToken() async {
    return await _auth.currentUser?.getIdToken();
  }

  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Ensure it's initialized
      // (In a real app, you'd wait for the future or do this in main)

      final GoogleSignInAccount googleUser = await _googleSignIn.authenticate();

      // For google_sign_in 7.x, idToken is in .authentication
      final String? idToken = googleUser.authentication.idToken;

      // For accessToken, we might need to request it via authorizationClient
      // But for Firebase, idToken is often sufficient.
      // If we need it:
      // final authz = await googleUser.authorizationClient.authorizeScopes([]);
      // final accessToken = authz.accessToken;

      final OAuthCredential credential = GoogleAuthProvider.credential(
        idToken: idToken,
      );

      return await _auth.signInWithCredential(credential);
    } catch (e) {
      debugPrint('Error signing in with Google: $e');
      return null;
    }
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut();
      await _auth.signOut();
    } catch (e) {
      debugPrint('Error signing out: $e');
    }
  }
}

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../widgets/google_sign_in_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;
  bool _isLoading = false;

  static const Color phoningPink = Color(0xFFFF89A1);
  static const Color phoningBlack = Color(0xFF1D1D1D);

  StreamSubscription<GoogleSignInAuthenticationEvent>? _authStreamSubscription;

  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await _googleSignIn.initialize();

    // Silent sign-in
    try {
      final account = await _googleSignIn.attemptLightweightAuthentication();
      if (account != null) {
        _handleGoogleUser(account);
      }
    } catch (e) {
      debugPrint('Silent sign-in failed: $e');
    }

    _authStreamSubscription = _googleSignIn.authenticationEvents.listen((
      event,
    ) {
      if (event is GoogleSignInAuthenticationEventSignIn) {
        _handleGoogleUser(event.user);
      }
    });
  }

  @override
  void dispose() {
    _authStreamSubscription?.cancel();
    super.dispose();
  }

  Future<void> _handleGoogleUser(GoogleSignInAccount googleUser) async {
    if (_isLoading) return;

    setState(() {
      _isLoading = true;
    });

    try {
      final GoogleSignInAuthentication googleAuth = googleUser.authentication;
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: null,
        idToken: googleAuth.idToken,
      );

      await FirebaseAuth.instance.signInWithCredential(credential);
    } on FirebaseAuthException catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to sign in: ${e.message}')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error: $e')));
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  Future<void> _signInWithGoogle() async {
    try {
      final user = await _googleSignIn.authenticate();
      _handleGoogleUser(user);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Sign in failed: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFFFD1D8), Color(0xFFFF89A1)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 2),
              Center(
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        color: phoningBlack,
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(color: Colors.white, width: 3),
                      ),
                      child: const Text(
                        'MARA-LOG',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.w900,
                          color: phoningPink,
                          letterSpacing: -2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '麻辣湯ログ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: phoningBlack,
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(flex: 3),
              if (_isLoading)
                const CircularProgressIndicator(color: phoningBlack)
              else
                buildGoogleSignInButton(onPressed: _signInWithGoogle),
              const SizedBox(height: 40),
              const Text(
                '© 2026 Malatang Log',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: phoningBlack,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

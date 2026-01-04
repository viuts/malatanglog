import 'package:flutter/material.dart';

Widget buildGoogleSignInButton({VoidCallback? onPressed}) {
  const Color phoningBlack = Color(0xFF1D1D1D);

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40),
    child: InkWell(
      onTap: onPressed,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: phoningBlack, width: 2.5),
          boxShadow: const [
            BoxShadow(color: phoningBlack, offset: Offset(4, 4), blurRadius: 0),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/5/53/Google_%22G%22_Logo.svg',
              height: 24,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.login),
            ),
            const SizedBox(width: 12),
            const Text(
              'Googleでログイン',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w900,
                color: phoningBlack,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

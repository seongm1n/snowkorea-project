import 'package:flutter/material.dart';
import 'mainScreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/login_background.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.6),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    '로그인',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    '소셜 계정으로 로그인하세요',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialLoginButton(
                        onPressed: () {
                          // 구글 로그인 로직 구현
                        },
                        backgroundColor: Colors.white,
                        logo: 'assets/google_logo.png',
                        label: 'Google',
                      ),
                      const SizedBox(width: 20),
                      _buildSocialLoginButton(
                        onPressed: () {
                          // 카카오 로그인 로직 구현
                        },
                        backgroundColor: const Color(0xFFFEE500),
                        logo: 'assets/kakao_logo.png',
                        label: 'Kakao',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLoginButton({
    required VoidCallback onPressed,
    required Color backgroundColor,
    required String logo,
    required String label,
  }) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 130,
        height: 50,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(logo, height: 24),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: label == 'Kakao' ? Colors.black87 : Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

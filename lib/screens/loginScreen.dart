import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Please log in'),
            ElevatedButton(
              onPressed: () {
                // Add login functionality here
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

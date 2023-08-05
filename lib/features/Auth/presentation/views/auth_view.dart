import 'package:flutter/material.dart';
import 'widgets/auth_body_view.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  AuthBodyView(),
    );
  }
}

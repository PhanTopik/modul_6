import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../screens/todo_screen.dart';
import '../services/auth/auth_service.dart';
import 'profile_screen.dart';
import 'signin_screen.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();
    return StreamBuilder(
        stream: _auth.authStateChange,
        builder: (context, snapshot){
          if(snapshot.hasData){
            return TodoScreen();
          }else {
            return SignInScreen();
          }
        }
    );
  }
}
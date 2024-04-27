import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Authprovider extends ChangeNotifier {
  String userVerificationId = '';
  bool _isSignedIn = false;
  bool get isSignedIn => _isSignedIn;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  authProvider() {
    checkSign();
  }

  Future<void> checkSign() async {
    SharedPreferences s = await SharedPreferences.getInstance();
    _isSignedIn = s.getBool("is_ignedin") ?? false;
    notifyListeners();
  }
}

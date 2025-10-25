import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/services/jwt_service.dart';

class AuthProvider extends ChangeNotifier {
  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;

  Future<void> initSession() async {
    _isAuthenticated = await JWTService.isAuthenticated();
    notifyListeners();
  }

  Future<void> refreshSession() async {
    await initSession();
  }
}

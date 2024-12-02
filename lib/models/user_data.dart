import 'package:flutter/material.dart';

class UserData with ChangeNotifier {
  String _name = '';
  String _email = '';

  String get name => _name;
  String get email => _email;

  void updateData({required String name, required String email}) {
    _name = name;
    _email = email;
    notifyListeners();
  }
}

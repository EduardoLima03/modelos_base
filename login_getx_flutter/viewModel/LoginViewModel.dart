import 'package:flutter/material.dart';
import 'package:formulario_login_mvvm/login_model.dart';

class LoginViewModel extends ChangeNotifier {
  LoginModel _loginModel = LoginModel();

  // Getters e setters
  String get email => _loginModel.email;
  String get senha => _loginModel.senha;

  void setEmail(String email) {
    _loginModel.email = email;
    notifyListeners();
  }

  void setSenha(String senha) {
    _loginModel.senha = senha;
    notifyListeners();
  }
}

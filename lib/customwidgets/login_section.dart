import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:provider/provider.dart';
import 'package:shop_a_z_user/auth/auth_service.dart';
import 'package:shop_a_z_user/utils/colors.dart';

class LoginSection extends StatefulWidget {
  final VoidCallback onSuccess;
  final Function(String) onFailure;

  const LoginSection({
    super.key,
    required this.onSuccess,
    required this.onFailure,
  });

  @override
  State<LoginSection> createState() => _LoginSectionState();
}

class _LoginSectionState extends State<LoginSection> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email Address',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Provide a valid email address';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: TextFormField(
              obscureText: _obscureText,
              controller: _passwordController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password (at least 6 characters)',
                  suffixIcon: IconButton(
                      onPressed: _togglePasswordVisibility,
                      icon: _obscureText
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility))),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Provide a valid email address';
                }
                return null;
              },
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: ElevatedButton(
              onPressed: _login,
              style: ElevatedButton.styleFrom(
                backgroundColor: kShrineBrown900,
                foregroundColor: kShrineSurfaceWhite,
              ),
              child: const Text('SIGN IN'),
            ),
          ),
        ],
      ),
    );
  }

  void _login() async {
    if(_formKey.currentState!.validate()) {
      EasyLoading.show(status: 'Please wait');
      final email = _emailController.text;
      final password = _passwordController.text;

      try{
        await AuthService.login(email, password);
        EasyLoading.dismiss();
        widget.onSuccess();
      } on FirebaseAuthException catch(error) {
        EasyLoading.dismiss();
        widget.onFailure(error.message!);
      }
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}

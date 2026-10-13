import 'package:flutter/material.dart';
import 'package:tugas1/ui/colors.dart';
import 'package:tugas1/ui/reuse_button_auth.dart';
import 'package:tugas1/ui/reuse_social_button.dart';
import 'package:tugas1/ui/reuse_textfield_auth.dart';
import 'package:tugas1/ui/typography.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;
  // bool _isLogin = true;

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 120),
                Text('Login Here', style: lBold.copyWith(color: white)),
                SizedBox(height: 32),
                Text(
                  'Welcome back you`ve\nbeen missed',
                  textAlign: TextAlign.center,
                  style: lBold.copyWith(color: white),
                ),
                SizedBox(height: 16),
                ReuseTextfieldAuth(
                  controller: _usernameController,
                  labelText: "Email atau Username",
                  hintText: "Masukan Email atau Username",
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 16),
                ReuseTextfieldAuth(
                  controller: _passwordController,
                  labelText: "Password",
                  hintText: "Masukkan Password",
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: !_isPasswordVisible,
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.grey,
                      size: 20,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password?',
                      style: sRegular.copyWith(color: blue),
                    ),
                  ),
                ),

                ReuseButtonAuth(isLogin: true),

                SizedBox(height: 16),

                ReuseButtonAuth(isLogin: false),

                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Or Continue With',
                    style: sSemiBold.copyWith(
                      color: blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 16,
                  children: [
                    ReuseSocialButton(
                      onTap: () {},
                      child: const Text(
                        'G',
                        style: TextStyle(
                          color: white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                    ReuseSocialButton(
                      onTap: () {},
                      child: const Icon(Icons.facebook, color: white, size: 26),
                    ),
                    ReuseSocialButton(
                      onTap: () {},
                      child: const Icon(Icons.apple, color: white, size: 26),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

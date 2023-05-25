import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../routes/app_pages.dart';
import '../themes/appAssets.dart';
import '../themes/appcolors.dart';
import '../widgets/button.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();

  final _passwordController = TextEditingController();

  bool _obscureText = true;

  void toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(AppAssets.login),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.03,
                    right: width * 0.03,
                    top: height * 0.01),
                child: TextField(
                  controller: _emailController,
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle:
                          const TextStyle(color: Colors.black, fontSize: 16),
                      filled: true,
                      fillColor: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.03,
                    right: width * 0.03,
                    top: height * 0.01),
                child: TextFormField(
                  obscureText: _obscureText,
                  // obscuringCharacter: '*',
                  controller: _passwordController,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                      hintText: 'Password',
                      hintStyle:
                          const TextStyle(color: Colors.black, fontSize: 16),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: IconButton(
                        onPressed: toggle,
                        icon: _obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(
                                Icons.visibility,
                                color: AppColors.buttonColor,
                              ),
                      )),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    if (kDebugMode) {
                      print('Button Clikced');
                    }
                  },
                  child: const Text('Forget Password'),
                ),
              ),
              SizedBox(
                height: height * 0.06,
                width: width * 0.9,
                child: Button(
                  function: () {},
                  title: 'Login',
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account? ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextButton(
                    onPressed: () {
                      Get.toNamed(AppPages.signUpPage);
                    },
                    child: const Text(
                      'Signup',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

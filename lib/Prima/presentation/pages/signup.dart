import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:task_mgmt/Prima/presentation/themes/appcolors.dart';
import '../routes/app_pages.dart';
import '../themes/appAssets.dart';
import '../widgets/button.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                child: Lottie.asset(
                  AppAssets.anime,
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.2,
                  fit: BoxFit.contain,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.03,
                    right: width * 0.03,
                    top: height * 0.03),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  // controller: _emailController,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: AppColors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.03,
                    right: width * 0.03,
                    top: height * 0.01),
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  // controller: _passwordController,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: AppColors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.03,
                    right: width * 0.03,
                    top: height * 0.01),
                child: TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*',
                  // controller: _confirmPasswordController,
                  style: const TextStyle(
                    color: AppColors.black,
                    fontSize: 18,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    hintStyle: TextStyle(color: Colors.grey[400], fontSize: 16),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: AppColors.white,
                    filled: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: height * 0.06,
                width: width * 0.9,
                child: Button(
                  function: () {
                    Get.toNamed(AppPages.dashboardScreen);
                  },
                  title: 'Signup',
                ),
              ),
              SizedBox(
                  height: 40,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account? ',
                        style: TextStyle(color: AppColors.black),
                      ),
                      TextButton(
                          onPressed: () {
                            Get.back();
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                color: AppColors.blue,
                                fontWeight: FontWeight.bold),
                          )),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    20, MediaQuery.of(context).size.height / 30, 20, 0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.8,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'For New Customer',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.8,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    0, MediaQuery.of(context).size.height / 30, 0, 0),
                child: Container(
                  margin: EdgeInsets.all(20),
                  width: width * 1,
                  child: Button(
                      title: 'Create New',
                      function: () {
                        Get.toNamed(AppPages.verifyNumberPage);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

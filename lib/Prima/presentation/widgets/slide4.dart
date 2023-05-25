import 'package:flutter/material.dart';

import '../themes/appAssets.dart';
import '../themes/appcolors.dart';

class Slide4 extends StatelessWidget {
  const Slide4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AppAssets.login))),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Sign Up'))


        ],
      ),
    );
  }
}

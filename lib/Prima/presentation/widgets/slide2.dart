import 'package:flutter/material.dart';

import '../themes/appAssets.dart';
import '../themes/appcolors.dart';

class Slide2 extends StatelessWidget {
  const Slide2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.5,
            decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(AppAssets.slide2))),
          ),
          const Text(
            'Easy Top Up & withdraw',
            style: TextStyle(fontSize: 20, color: AppColors.white),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.08,
                right: MediaQuery.of(context).size.width * 0.08,
                top: 50),
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry'
              'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s'
              'Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
          ),
        ],
      ),
    );
  }
}

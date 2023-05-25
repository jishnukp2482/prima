import 'package:flutter/material.dart';

import '../themes/appcolors.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.title,  required this.function, }) : super(key: key);

  final String title;
  final Function function;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(left: w*0.1,
      right: w*0.1),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
        child: ElevatedButton(onPressed: ()=> function(),
        style:  ElevatedButton.styleFrom(
          backgroundColor: AppColors.buttonColor,
        ), child:Text(title),));
  }
}

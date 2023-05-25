import 'package:flutter/material.dart';

import '../themes/appcolors.dart';

class Details extends StatelessWidget {
  const Details({
    required this.label,
    required this.title,
    required this.conditon,
  });

  final String label;
  final String title;
  final bool conditon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          textAlign: TextAlign.start,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              color: conditon ? AppColors.black : AppColors.white),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: conditon ? AppColors.black : AppColors.white,
          ),
        ),
      ],
    );
  }
}

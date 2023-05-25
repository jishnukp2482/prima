import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../themes/appcolors.dart';

class BillsPayScreen extends StatelessWidget {
  const BillsPayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.height;
    return Container(
      padding: const EdgeInsets.only(top: 50),
      color: AppColors.backgroundColor,
      width: w*2,
      height: w*0.15,
      child: Stack(
        children: [
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: const [
             FaIcon(FontAwesomeIcons.facebook),
             FaIcon(FontAwesomeIcons.facebook),
             FaIcon(FontAwesomeIcons.facebook),
             FaIcon(FontAwesomeIcons.facebook),
             FaIcon(FontAwesomeIcons.facebook),
           ],
         )
        ],
      ),
    );
  }
}

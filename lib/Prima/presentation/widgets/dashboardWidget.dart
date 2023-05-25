import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../manager/dashBoardController.dart';
import '../themes/appcolors.dart';
import 'Icons.dart';

class DashBoardWidget extends StatelessWidget {
  DashBoardWidget({Key? key}) : super(key: key);

  final controller = Get.find<DashBoardController>();

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    int columnCount = 4;

    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(children: [
        Column(
          children: [
            Container(
              color: AppColors.backgroundColor,
              height: MediaQuery.of(context).size.height * 0.30,
              child: Column(children: [
                SafeArea(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: TextButton(
                            onPressed: null,
                            child: Text(
                              'My Bank',
                              style: TextStyle(
                                fontSize: 20,
                                color: AppColors.textColor,
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: IconButton(
                            onPressed: null,
                            icon: Icon(
                              Icons.settings,
                              size: 30,
                              color: AppColors.iconColor,
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.qr_code_scanner_rounded,
                          size: 40,
                          color: AppColors.iconColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add_circle_outline_sharp,
                          size: 40,
                          color: AppColors.iconColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.ccVisa,
                          size: 40,
                          color: AppColors.iconColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FontAwesomeIcons.amazonPay,
                          size: 40,
                          color: AppColors.iconColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.17,
            right: 0,
            left: 0,
            child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 1,
                    color: AppColors.black,
                  ),
                ], color: AppColors.primaryColor),
                margin: const EdgeInsets.all(30),
                height: MediaQuery.of(context).size.height * 0.23,
                child: AnimationLimiter(
                  child: GridView.count(
                    padding: EdgeInsets.all(10),
                    crossAxisCount: columnCount,
                    children:
                        List.generate(controller.gridIcon.length, (int index) {
                      return AnimationConfiguration.staggeredGrid(
                        position: index,
                        duration: const Duration(
                          milliseconds: 800,
                        ),
                        columnCount: controller.gridIcon.length,
                        child: ScaleAnimation(
                          duration: const Duration(
                            milliseconds: 900,
                          ),
                          curve: Curves.fastLinearToSlowEaseIn,
                          child: FadeInAnimation(
                            child: CustomIcon(
                              iconModal: controller.gridIcon[index],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ))),
      ]),
    );
  }
}


// GridView.builder(
//   padding: const EdgeInsets.all(10),
//   itemCount: controller.gridIcon.length,
//   shrinkWrap: true,
//   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//     crossAxisCount: 4,
//     mainAxisSpacing: 2,
//   ),
//   itemBuilder: (context, index) {
//     return CustomIcon(
//       iconModal: controller.gridIcon[index],
//     );
//   },
// )
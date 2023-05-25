import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../manager/dashBoardController.dart';
import '../themes/appcolors.dart';
import 'Icons.dart';

class PayCard extends StatelessWidget {
  const PayCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashBoardController>();
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: w * 0.030, right: w * 0.030),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.bluegrey,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Bank Pay',
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 15,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1, mainAxisSpacing: 6),
// padding: EdgeInsets.all(10),
                      itemCount: controller.cardIcons.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CustomIcon(
                          iconModal: controller.cardIcons[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: w * 0.030),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.bluegrey,
              ),
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('EMI Network Card',
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 15,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1, mainAxisSpacing: 7),
// padding: EdgeInsets.all(10),
                      itemCount: controller.cardIcons.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CustomIcon(
                          iconModal: controller.emiCard[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: w * 0.030),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.bluegrey,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Bank Pay',
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 15,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1, mainAxisSpacing: 6),
// padding: EdgeInsets.all(10),
                      itemCount: controller.cardIcons.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CustomIcon(
                          iconModal: controller.cardIcons[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: w * 0.030),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.bluegrey,
              ),
              width: MediaQuery.of(context).size.width * 0.90,
              height: MediaQuery.of(context).size.height * 0.16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(10),
                        child: Text('Bank Pay',
                            style: TextStyle(
                              color: AppColors.textColor,
                              fontSize: 15,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width * 0.88,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1, mainAxisSpacing: 6),
// padding: EdgeInsets.all(10),
                      itemCount: controller.cardIcons.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CustomIcon(
                          iconModal: controller.cardIcons[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

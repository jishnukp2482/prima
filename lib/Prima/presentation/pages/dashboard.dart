import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../manager/dashBoardController.dart';
import '../widgets/bankPayCard.dart';
import '../widgets/bill_pay.dart';
import '../widgets/dashboardWidget.dart';
import '../widgets/slider.dart';

class DashBoardScreen extends StatelessWidget {
   const DashBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashBoardController>();
    // final img = Get.find<ImgController>();
double h = MediaQuery.of(context).size.height;
double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                child: DashBoardWidget()),
           const SizedBox(
                child: PayCard()),
            const Padding(
              padding: EdgeInsets.all(10),
              child: BillsPayScreen(),
            ),

            Container(
              height: 90,
              width: w*0.95,
            child:  const SliderWidget(),
            ),

          ],
        ),
      ),
    );
  }
}



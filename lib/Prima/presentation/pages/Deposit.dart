import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

import '../manager/DepositController.dart';
import '../themes/appcolors.dart';

class Deposit extends StatefulWidget {
  const Deposit({super.key});

  @override
  State<Deposit> createState() => _DepositState();
}

class _DepositState extends State<Deposit> with SingleTickerProviderStateMixin {
  final controller = Get.find<DepositController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Deposit",
          style: TextStyle(color: AppColors.white),
        ),
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: const Icon(
            Icons.arrow_back_ios_new,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.cardcolor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => TabBar(
                onTap: (value) => controller.changetabindex(value),
                tabs: [
                  Tab(
                    child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Individual Savings Account",
                            style: TextStyle(color: AppColors.cardcolor),
                          ),
                        )),
                  ),
                  Tab(
                    child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Term Deposit",
                            style: TextStyle(color: AppColors.cardcolor),
                          ),
                        )),
                  ),
                ]),
          ),
          Expanded(
              child: IndexedStack(
            index: controller.selectedtabindex.value,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              )
            ],
          ))
        ],
      ),
    ));
  }
}

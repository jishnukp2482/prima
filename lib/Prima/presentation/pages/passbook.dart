import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:task_mgmt/Prima/presentation/widgets/passbookitem.dart';

import '../themes/appcolors.dart';

class PassBook extends StatelessWidget {
  const PassBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "PassBook",
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
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: PassbookItems(),
          ),
        ],
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:icofont_flutter/icofont_flutter.dart';

import '../../domain/entities/PassBookModel.dart';

class PassBookController extends GetxController {
  final List<PassBookModel> passbookitems = [
    PassBookModel(
        title: 'Deposit', img: "assets/images/deposit.png", ontap: () {}),
    PassBookModel(title: 'Loan', img: "assets/images/loan.png", ontap: () {}),
    PassBookModel(title: "Share", img: "assets/images/share.png", ontap: () {}),
  ];
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../domain/entities/IconModal.dart';

class DashBoardController extends GetxController{


  final List<CustomIconModal> cardIcons =[
  CustomIconModal(title: 'Bank', customIconModal: FontAwesomeIcons.bank),
  CustomIconModal(title: 'Pay', customIconModal:  FontAwesomeIcons.paypal),
  CustomIconModal(title: 'Credit', customIconModal:  Icons.add),
  CustomIconModal(title: 'Passbook', customIconModal: FontAwesomeIcons.bookOpen),
];
  final List<CustomIconModal> emiCard =[
    CustomIconModal(title: 'EMI Card', customIconModal: FontAwesomeIcons.bank),
    CustomIconModal(title: 'Transaction', customIconModal:  FontAwesomeIcons.paypal),
    CustomIconModal(title: 'Partners', customIconModal:  Icons.add),
    CustomIconModal(title: 'Offers', customIconModal: FontAwesomeIcons.bookOpen),

  ];
  final List<CustomIconModal> gridIcon =[
    CustomIconModal(title: 'Bank', customIconModal: FontAwesomeIcons.bank),
    CustomIconModal(title: 'Pay', customIconModal:  FontAwesomeIcons.moneyBillTransfer),
    CustomIconModal(title: 'Credit', customIconModal:  Icons.account_circle),
    CustomIconModal(title: 'Account', customIconModal: FontAwesomeIcons.paypal),
    CustomIconModal(title: 'Bank', customIconModal: FontAwesomeIcons.bank),
    CustomIconModal(title: 'Pay', customIconModal:  FontAwesomeIcons.moneyBillTransfer),
    CustomIconModal(title: 'Credit', customIconModal:  Icons.account_circle),
    CustomIconModal(title: 'Account', customIconModal: FontAwesomeIcons.paypal),
  ];
  
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../themes/appcolors.dart';
import '../widgets/AccountLoan.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account",
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
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overscroll) {
          overscroll.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///Deposit
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text(
                  "Deposit",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/cardBg.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          offset: const Offset(0, 5),
                          blurRadius: 40,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "INDIVIDUAL SAVINGS ACCOUNT\nPRIMA-BIYEM ASSI",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                letterSpacing: 1,
                                overflow: TextOverflow.ellipsis,
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "10002500101",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                letterSpacing: 1,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "XAF13404.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                letterSpacing: 1,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Expanded(
                                  child: Text(
                                "Nominee",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      ":",
                                      style: TextStyle(color: AppColors.white),
                                    )),
                              ),
                              Expanded(
                                  child: Text(
                                "  NA",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Expanded(
                                  child: Text(
                                "Maturity Date",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      ":",
                                      style: TextStyle(color: AppColors.white),
                                    )),
                              ),
                              Expanded(
                                  child: Text(
                                "  01/01/2023",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500),
                              )),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage("assets/images/cardBg.jpg"),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(.5),
                          offset: const Offset(0, 5),
                          blurRadius: 40,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "TERM DEPOSIT\nPRIMA-BIYEM ASSI",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                letterSpacing: 1,
                                overflow: TextOverflow.ellipsis,
                                color: AppColors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            "10001000006",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                letterSpacing: 1,
                                color: Colors.white70,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "XAF100000.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                letterSpacing: 1,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Expanded(
                                  child: Text(
                                "Nominee",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      ":",
                                      style: TextStyle(color: AppColors.white),
                                    )),
                              ),
                              Expanded(
                                  child: Text(
                                "  NA",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500),
                              )),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Expanded(
                                  child: Text(
                                "Maturity Date",
                                style: TextStyle(
                                    color: AppColors.white,
                                    fontWeight: FontWeight.w500),
                              )),
                              Expanded(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text(
                                      ":",
                                      style: TextStyle(color: AppColors.white),
                                    )),
                              ),
                              Expanded(
                                  child: Text(
                                "  05/04/2024",
                                style: TextStyle(
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w500),
                              )),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),

              ///Loan
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text(
                  "Loan",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              //   child: Container(
              //       alignment: Alignment.center,
              //       decoration: BoxDecoration(
              //         image: DecorationImage(
              //             image: AssetImage("assets/images/cardBg.jpg"),
              //             fit: BoxFit.cover),
              //         borderRadius: BorderRadius.circular(10),
              //         boxShadow: [
              //           BoxShadow(
              //             color: Colors.black.withOpacity(.5),
              //             offset: Offset(0, 5),
              //             blurRadius: 40,
              //           ),
              //         ],
              //       ),
              //       child: Padding(
              //         padding: const EdgeInsets.all(25),
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.start,
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           children: [
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Details(
              //                     label: "Balance XAF",
              //                     title: "100000.00",
              //                     conditon: false),
              //                 Container(),
              //                 Details(
              //                     label: "Overdue Amount XAF",
              //                     title: "1000",
              //                     conditon: true)
              //               ],
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Divider(color: AppColors.grey),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               crossAxisAlignment: CrossAxisAlignment.start,
              //               children: [
              //                 Details(
              //                     label: "Overdue Interest XAF",
              //                     title: "1080.0",
              //                     conditon: false),
              //                 // Container(),
              //                 Padding(
              //                   padding: const EdgeInsets.only(left: 5),
              //                   child: Details(
              //                       label: "Interest @10.0%",
              //                       title: "4165.00",
              //                       conditon: true),
              //                 ),
              //                 SizedBox()
              //               ],
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Divider(color: AppColors.grey),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Details(
              //                     label: "Loan ID",
              //                     title: "100013000001",
              //                     conditon: false),
              //                 Details(
              //                     label: "Loan Type",
              //                     title: "SHORT TERM LOANS",
              //                     conditon: true),
              //               ],
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Divider(color: AppColors.grey),
              //             SizedBox(
              //               height: 10,
              //             ),
              //             Row(
              //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //               children: [
              //                 Details(
              //                     label: "Loan Branch",
              //                     title: "PRIMA - BIYEM ASSI",
              //                     conditon: false),
              //                 Padding(
              //                   padding: const EdgeInsets.only(left: 12),
              //                   child: Details(
              //                       label: "Surety",
              //                       title: "FOUBOD HANNA\nNGESI",
              //                       conditon: true),
              //                 ),
              //                 Container()
              //               ],
              //             ),
              //             SizedBox(
              //               height: 10,
              //             ),
              //           ],
              //         ),
              //       )),
              // ),
              const AccountLoan(),
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text(
                  "Share",
                  style: TextStyle(
                      color: AppColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("You don't have a share in this bank")],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
